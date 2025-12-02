# Update overlay if needed

# Run speakeasy
speakeasy run

# build the provider
go mod tidy
go build

# move to go bin
mv terraform-provider-zeronetworks /Users/nicholas/go/bin/terraform-provider-zeronetworks 
