FROM jangrewe/gitlab-ci-android

RUN apt-get -qq update && \
    apt-get install -qqy --no-install-recommends \
      build-essential \
      ruby-full

RUN gem update --system     
RUN gem install bundler fastlane --no-rdoc --no-ri


