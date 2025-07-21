# asciidoctor image
FROM asciidoctor/docker-asciidoctor

LABEL "version"="1.0"

# warning: csv is not part of the default gems starting from Ruby 3.4.0. Install csv from RubyGems.
RUN gem install csv

# Setup entrypoint
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

