FROM scratch
ADD build/base-files.tar.gz /
COPY build/ca-certificates.crt /usr/etc/ssl/certs/
COPY build/dockerlaunch /usr/bin/
COPY build/docker /usr/bin/docker
VOLUME /var/lib/docker
CMD ["/usr/bin/dockerlaunch", "/usr/bin/docker", "-d", "-s", "overlay"]
