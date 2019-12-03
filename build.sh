#!/bin/bash

VER="$(git describe --always)"
docker build . -t vratislav/gitlab-ci-fastlane-android:$VER -t vratislav/gitlab-ci-fastlane-android:latest
