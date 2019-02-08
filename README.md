# GitHub Action for Cloud Foundry CLI

The GitHub Action for [Cloud Foundry CLI](https://docs.cloudfoundry.org/cf-cli/install-go-cli.html)

## Usage

```
action "Deploy to PWS" {
  uses = "louisthomas/cloud-foundry-cli-action@master"
  secrets = ["PASSWORD"]
  env = {
    CF_API_ENDPOINT = "<Cloud Foundry API endpoint>"
    ORG = "<Organisation>"
    SPACE = "<Space>"
    USERNAME = "<Username>" 
  }
}
```
