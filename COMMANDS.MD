speakeasy update

speakeasy overlay validate -o overlay.yaml
speakeasy overlay apply -s ../zero-core/ts/api/docs/openapi.yaml -o overlay.yaml --out=openapi.yaml

speakeasy run

copy-item ./zn_custom/provider/*.* ./internal/provider/
copy-item ./zn_custom/sdk/models/shared/*.* ./internal/sdk/models/shared/


go mod tidy
go generate

$version = (Get-Content ./.speakeasy/gen.yaml | ConvertFrom-Yaml).terraform.version

#Build mac
go build -o terraform-provider-zeronetworks_$version

#build windows
env GOOS=windows GOARCH=amd64 go build -o terraform-provider-zeronetworks_$version.exe

#Local
New-Item ~/.terraform.d/plugins/registry.terraform.io/zeronetworks/zeronetworks/$version/darwin_arm64 -Type Directory

copy-Item terraform-provider-zeronetworks_$version -Destination ~/.terraform.d/plugins/registry.terraform.io/zeronetworks/zeronetworks/$version/darwin_arm64/terraform-provider-zeronetworks_$version

#testing
New-Item ../terraform-provider-zeronetwork-testing/providers_dev/providers/registry.terraform.io/zeronetworks/zeronetworks/$version/darwin_arm64 -Type Directory

copy-Item terraform-provider-zeronetworks_$version -Destination ../terraform-provider-zeronetwork-testing/providers_dev/providers/registry.terraform.io/zeronetworks/zeronetworks/$version/darwin_arm64/terraform-provider-zeronetworks_$version
