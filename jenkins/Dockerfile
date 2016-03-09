FROM jenkins

# Add Plugins
RUN mkdir -p /usr/share/jenkins/ref/plugins
RUN cd /usr/share/jenkins/ref/plugins/

RUN curl -O https://updates.jenkins-ci.org/download/plugins/ws-cleanup/latest/ws-cleanup.hpi
RUN curl -O https://updates.jenkins-ci.org/download/plugins/swarm/latest/swarm.hpi
RUN curl -O https://updates.jenkins-ci.org/download/plugins/scm-api/latest/scm-api.hpi
RUN curl -O https://updates.jenkins-ci.org/download/plugins/git-client/latest/git-client.hpi
RUN curl -O https://updates.jenkins-ci.org/download/plugins/git/latest/git.hpi
RUN curl -O https://updates.jenkins-ci.org/download/plugins/ansicolor/latest/ansicolor.hpi
RUN curl -O https://updates.jenkins-ci.org/download/plugins/multiple-scms/latest/multiple-scms.hpi
RUN curl -O https://updates.jenkins-ci.org/download/plugins/github-api/latest/github-api.hpi
RUN curl -O https://updates.jenkins-ci.org/download/plugins/github/latest/github.hpi

USER root
RUN chown -R jenkins /usr/share/jenkins/ref/plugins

# Add Maven
ENV MAVEN_VERSION=3.3.3 \
    MAVEN_HOME=/usr/share/maven

RUN curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
