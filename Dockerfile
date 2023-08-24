FROM 231224489621.dkr.ecr.us-east-1.amazonaws.com/solr:1.2.0

RUN rm -rf ${SOLR_CORE_DIR}/conf/
# XXX: User and Group IDs are necessary due to an open issue with buildx: https://github.com/docker/buildx/issues/1526
COPY --link --chown=100:101 conf ${SOLR_CORE_DIR}/conf/
ADD --link --chown=100:101 https://github.com/dbmdz/solr-ocrhighlighting/releases/download/0.8.3/solr-ocrhighlighting-0.8.3-solr78.jar ${SOLR_HOME}/contrib/ocrhighlighting/lib/
USER solr
