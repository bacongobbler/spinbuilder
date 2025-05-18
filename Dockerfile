FROM heroku/heroku:24-build

USER root

ENV SPIN_VERSION=v3.2.0
RUN mkdir /tmp/spin && cd /tmp/spin && \
	wget https://github.com/spinframework/spin/releases/download/${SPIN_VERSION}/spin-${SPIN_VERSION}-linux-amd64.tar.gz && \
	tar -xzf spin-${SPIN_VERSION}-linux-amd64.tar.gz && \
	mv spin /usr/bin/spin && \
	rm -rf /tmp/spin

COPY rootfs /
RUN chmod +x /usr/bin/build
CMD ["/usr/bin/build"]
