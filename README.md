# gitlab-ci-fastlane-android
This Docker image contains the Android SDK and most common packages necessary for building Android apps in a CI tool like GitLab CI.

This version is based on the awesome [gitlab-ci-android](https://github.com/jangrewe/gitlab-ci-android) and in addition to it, it installs fastlane.

Make sure your CI environment's caching works as expected, this greatly improves the build time, especially if you use multiple build jobs.

A `.gitlab-ci.yml` with caching of your project's dependencies would look like this:

```
image: vratislav/gitlab-ci-fastlane-android

stages:
- build

before_script:
- export GRADLE_USER_HOME=$(pwd)/.gradle
- chmod +x ./gradlew

cache:
  key: ${CI_PROJECT_ID}
  paths:
  - .gradle/

build:
  stage: build
  script:
  - ./gradlew assembleDebug
  artifacts:
    paths:
    - app/build/outputs/apk/app-debug.apk
```