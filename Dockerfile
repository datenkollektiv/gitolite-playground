FROM jgiannuzzi/gitolite

RUN apk add --no-cache docker
RUN addgroup git docker

# add git to sudoers to allow access to docker

RUN apk add --no-cache sudo
RUN echo "git ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/git && chmod 0440 /etc/sudoers.d/git
