FROM jenkinsci/blueocean

USER root
 

#RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
#    && apt-get update \
#    && apt-get install -y \
#        nodejs build-essential

RUN apk add nodejs

RUN apk add npm

RUN apk add --no-cache curl wget git-perl bash make gcc g++ linux-headers libgcc libstdc++ build-base git python2

RUN npm config set unsafe-perm true

RUN npm install -g ionic cordova

RUN npm install node-gyp -g

RUN npm cache verify

#RUN npm install -g @angular/cli@latest

#RUN npm install -g angular-cli

RUN npm install -g @angular/cli@latest --unsafe-perm

RUN npm --version

USER jenkins

RUN eval `ssh-agent -s` \
	&& ssh-keygen -t rsa -f /var/jenkins_home/.ssh/id_rsa -q -P "" \
    && echo "" \
    && echo "--Wichtig--Notieren--" \
    && cat /var/jenkins_home/.ssh/id_rsa.pub \
    && echo "--Wichtig--Notieren--" \
    && echo ""

#commands: docker exec -i -t -u root jenkins-master /bin/bash

#apt-get update && apt-get install -y nodejs npm

