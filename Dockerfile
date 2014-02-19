FROM ubuntu:precise
MAINTAINER Chris Weyl <chris.weyl@wps.io>

# update packages
ENV DEBIAN_FRONTEND noninteractive
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install python-software-properties
RUN apt-add-repository ppa:git-core/ppa
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install git openssh-server
RUN mkdir /var/run/sshd

# fetch the gitolite source (latest upstream by default)...
RUN mkdir -p /usr/local/src
RUN git clone git://github.com/sitaramc/gitolite /usr/local/src/gitolite

# add our gitolite system user
RUN useradd --home /srv/git --system --comment 'gitolite system user' git

# prep our living space...
RUN mkdir -p /srv/git/bin /srv/git/.gitolite/logs /srv/git/repositories
RUN chown -R git.git /srv/git
RUN chmod 0700 /srv/git

# ...and install; just hooks for the moment!
WORKDIR /srv/git
RUN /usr/local/src/gitolite/install -to /srv/git/bin
RUN su git -c "./bin/gitolite setup --hooks-only"

# builds FROM this one will do the full install.
ONBUILD WORKDIR /srv/git
ONBUILD ADD admin.pub .
ONBUILD RUN su git -c "./bin/gitolite setup -pk admin.pub"

EXPOSE 22
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
