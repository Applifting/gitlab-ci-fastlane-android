#!/bin/bash

VER="$(git describe --always)"
docker push vratislav/gitlab-ci-fastlane-android:$VER 
docker push vratislav/gitlab-ci-fastlane-android:latest