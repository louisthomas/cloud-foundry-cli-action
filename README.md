# GitHub Action for Cloud Foundry CLI

The GitHub Action for [Cloud Foundry CLI](https://docs.cloudfoundry.org/cf-cli/install-go-cli.html)

## Usage

```
- name: Deploy to PWS
  uses: louisthomas/cloud-foundry-cli-action@master
  env:
    CF_API_ENDPOINT = <Cloud Foundry API endpoint>
    ORG = <Organisation>
    SPACE = <Space>
    USERNAME = ${{secrets.CF_USERNAME }}
    APP_NAME = <Application name>
    ARTIFACT_PATH = <Artifact file path>
    PASSWORD: ${{ secrets.CF_PASSWORD }}
```

## Example

```
- name: Deploy to PWS
  uses: louisthomas/cloud-foundry-cli-action@master
  env:
    CF_API_ENDPOINT = api.run.pivotal.io
    ORG = SuperOrg
    SPACE = dev
    USERNAME = ${{secrets.CF_USERNAME }}
    APP_NAME = sample_app
    ARTIFACT_PATH = target/sample-app-0.0.1-SNAPSHOT.jar
    PASSWORD: ${{ secrets.CF_PASSWORD }}
```


