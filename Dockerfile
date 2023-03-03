FROM 231224489621.dkr.ecr.us-east-1.amazonaws.com/solr:1.0.0

COPY ctda-solr-config-7702bdc1.zip /tmp/solr-config.zip
RUN rm -rf /var/solr/data/islandora8/conf/* \
    && unzip -o /tmp/solr-config.zip -d /var/solr/data/islandora8/conf/ \
    && chown -R solr:solr /var/solr/data/islandora8/conf/
USER solr
