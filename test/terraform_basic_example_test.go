package test

import (
	"fmt"
	"strings"
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

// No region has Arm64 for Python3.7, but some regions don't
// have *ANY* Arm64 layers, either because there is no support
// for Arm64 Lambda or because it hasn't been published yet.
var cases = []struct {
	region   string
	hasArm64 bool
}{
	{region: "us-east-1", hasArm64: true},
	{region: "us-east-2", hasArm64: true},
	{region: "us-west-1", hasArm64: false},
	{region: "us-west-2", hasArm64: true},
	{region: "ap-northeast-1", hasArm64: true},
	{region: "ap-northeast-2", hasArm64: false},
	{region: "ap-northeast-3", hasArm64: false},
	{region: "ap-south-1", hasArm64: true},
	{region: "ap-southeast-1", hasArm64: true},
	{region: "ap-southeast-2", hasArm64: true},
	{region: "ca-central-1", hasArm64: false},
	{region: "eu-central-1", hasArm64: true},
	{region: "eu-north-1", hasArm64: false},
	{region: "eu-west-1", hasArm64: true},
	{region: "eu-west-2", hasArm64: true},
	{region: "eu-west-3", hasArm64: false},
	{region: "sa-east-1", hasArm64: false},
}

func TestRegionInArn(t *testing.T) {
	//Use of .Parallel has proved to be flaky in practice, disabling.
	//t.Parallel()

	for _, tt := range cases {
		tt := tt // this
		t.Run(fmt.Sprintf("Check ARN for region %s", tt.region), func(t *testing.T) {
			terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
				TerraformDir: "../examples/terraform-basic-example",
				Vars: map[string]interface{}{
					"region":  tt.region,
					"runtime": "python3.9",
				},
				NoColor: true,
			})
			defer terraform.Destroy(t, terraformOptions)
			terraform.InitAndApply(t, terraformOptions)
			actualLayerArn := terraform.Output(t, terraformOptions, "layer_arn")
			// The ARN should contain the requested region
			assert.True(t, strings.Contains(actualLayerArn, tt.region))
			// Inspection of values shows runtime present as substring
			assert.True(t, strings.Contains(actualLayerArn, "Python39"))
		})
	}
}

func TestArm64Regions(t *testing.T) {
	for _, tt := range cases {
		tt := tt // this
		t.Run(fmt.Sprintf("Check Arm64 for region %s", tt.region), func(t *testing.T) {
			terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
				TerraformDir: "../examples/terraform-basic-example",
				Vars: map[string]interface{}{
					"region":       tt.region,
					"architecture": "arm64",
					"runtime":      "python3.9",
				},
				NoColor: true,
			})
			defer terraform.Destroy(t, terraformOptions)
			terraform.InitAndApply(t, terraformOptions)
			actualLayerArn := terraform.Output(t, terraformOptions, "layer_arn")
			if tt.hasArm64 {
				// The ARN should contain the requested region
				assert.True(t, strings.Contains(actualLayerArn, tt.region))
				// Inspection of values shows runtime present as substring
				assert.True(t, strings.Contains(actualLayerArn, "Python39"))
				// Inspection of values shows architecture present when Arm64 is chosen
				assert.True(t, strings.Contains(actualLayerArn, "Arm64"))
			} else {
				assert.Equal(t, actualLayerArn, "")
			}
		})
	}
}
