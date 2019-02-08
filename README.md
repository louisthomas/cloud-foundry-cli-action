# GitHub Action for Cloud Foundry CLI

The GitHub Action for [Cloud Foundry CLI](https://docs.cloudfoundry.org/cf-cli/install-go-cli.html)

## Usage

```
action "package" {
  uses = "LucaFeger/action-maven-cli@master"
  args = "clean install"
}
```