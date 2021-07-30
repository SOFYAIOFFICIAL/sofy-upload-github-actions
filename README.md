# sofy-upload-github-actions

This respository contains a library of GitHub Actions to help you upload your build at Sofy.

You are required to provide the Build Path and Subscription key.

## Build Path

Makesure your build(.apk file or .ipa file) is created in the same remote repository. You are required to input the build path of your build. Sample build path: '/home/runner/work/_actions/SOFYAIOFFICIAL/sofy-upload-github-actions/main/Byte.ipa' 

## Subscription Key

Find your subscription key by logging into Sofy, going to Account Settings --> API Key section.

## Usage

Add the following step action in your workflow.
```yaml

- name: 'Upload build'
  env:
    build_path: 'Path/to/your/build(.apk or .ipa)'
    subscription_key: Your subscription key
  uses: 'SOFYAIOFFICIAL/sofy-upload-github-actions@main'

```

## Sample Workflow

Following is the sample workflow. Makesure to provide build path and subscription key as environment variable inputs in your workflow.
```yaml
jobs:  
  Uploading-job:  
    name: 'Upload build on Sofy'
    runs-on: ubuntu-latest
    steps:
      - name: 'MakeBuild'
         #...
         #... (generate .apk or .ipa)
         #...
         
      - name: 'Upload build'
        env:
          build_path: 'Path/to/your/build(.apk or .ipa)'
          subscription_key: Your subscription key
        uses: 'SOFYAIOFFICIAL/sofy-upload-github-actions@main'
        
```
