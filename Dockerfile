FROM kurron/docker-azul-jdk-8-build:latest

MAINTAINER Ron Kurr <kurr@kurron.org>

ENV WEBIDE_JDK /usr/lib/jvm/zulu-8-amd64

ENTRYPOINT ["/opt/PhpStorm-172.3317.83/bin/phpstorm.sh"]

USER root

ADD https://download.jetbrains.com/webide/PhpStorm-2017.2.tar.gz /opt

RUN rm -rf /opt/PhpStorm-172.3317.83/jre64

USER powerless

