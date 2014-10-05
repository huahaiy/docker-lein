#
# Use lein to run Clojure application 
#
# Version     0.1
#

# base image from docker hub
FROM huahaiy/oracle-java

MAINTAINER Huahai Yang <hyang@juji.io>

ENV LEIN_ROOT true

RUN \
  echo "===> download leiningen..."  && \ 
  wget --no-check-certificate -O /usr/bin/lein \
    https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
  chmod +x /usr/bin/lein && \
  \
  \
  echo "===> get dependencies..."  && \ 
  lein 

VOLUME ["/srv/app"]

WORKDIR /srv/app

ENTRYPOINT ["lein"]

