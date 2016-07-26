FROM scratch
MAINTAINER  <>

ADD armhf-debian-jessie.tgz /
ADD configure.sh /configure.sh
RUN ["/usr/bin/umeq-arm", "-execve", "-0", "bash", "/bin/bash", "-c", "/configure.sh"]

CMD ["/usr/bin/umeq-arm", "-execve", "-0", "bash", "/bin/bash"]
