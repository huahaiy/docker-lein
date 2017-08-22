#
# Use lein to run Clojure application
#
# Version     0.4
#

FROM huahaiy/oracle-java

MAINTAINER Huahai Yang <hyang@juji.io>

ENV LEIN_ROOT true

RUN \
  apt-get update && \
  apt-get install -y --force-yes ansible && \
  echo "===> download leiningen..."  && \
  wget -q -O /usr/bin/lein \
    https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
  chmod +x /usr/bin/lein && \
  \
  \
  echo "===> get dependencies..."  && \
  lein

ENTRYPOINT ["lein"]
