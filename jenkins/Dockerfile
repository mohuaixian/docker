FROM jenkins

# Add Plugins
RUN mkdir -p /usr/share/jenkins/ref/plugins
RUN cd /usr/share/jenkins/ref/plugins/
RUN curl -O https://updates.jenkins-ci.org/download/plugins/ws-cleanup/latest/ws-cleanup.hpi #&& mv ws-cleanup.hpi /usr/share/jenkins/ref/plugins/ws-cleanup.hpi
ADD curl -O https://updates.jenkins-ci.org/download/plugins/swarm/latest/swarm.hpi #&& mv swarm.hpi /usr/share/jenkins/ref/plugins/swarm.hpi
ADD curl -O https://updates.jenkins-ci.org/download/plugins/scm-api/latest/scm-api.hpi #&& mv scm-api.hpi /usr/share/jenkins/ref/plugins/scm-api.hpi
ADD curl -O https://updates.jenkins-ci.org/download/plugins/git-client/latest/git-client.hpi #&& mv git-client.hpi /usr/share/jenkins/ref/plugins/git-client.hpi
ADD curl -O https://updates.jenkins-ci.org/download/plugins/git/latest/git.hpi #&& mv git.hpi /usr/share/jenkins/ref/plugins/git.hpi
ADD curl -O https://updates.jenkins-ci.org/download/plugins/ansicolor/latest/ansicolor.hpi #&& mv ansicolor.hpi /usr/share/jenkins/ref/plugins/ansicolor.hpi
ADD curl -O https://updates.jenkins-ci.org/download/plugins/multiple-scms/latest/multiple-scms.hpi #&& mv multiple-scms.hpi /usr/share/jenkins/ref/plugins/multiple-scms.hpi
ADD curl -O https://updates.jenkins-ci.org/download/plugins/github-api/latest/github-api.hpi #&& mv github-api.hpi /usr/share/jenkins/ref/plugins/github-api.hpi
ADD curl -O https://updates.jenkins-ci.org/download/plugins/github/latest/github.hpi #&& mv github.hpi /usr/share/jenkins/ref/plugins/github.hpi
USER root
RUN chown -R jenkins /usr/share/jenkins/ref/plugins

# Add Maven
RUN sudo apt-get install -y maven