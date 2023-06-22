FROM 231224489621.dkr.ecr.us-east-1.amazonaws.com/solr:1.0.0

RUN rm -rf ${SOLR_CORE_DIR}/conf/
COPY --link --chown=solr conf ${SOLR_CORE_DIR}/conf/
ADD --link --chown=solr https://github.com/dbmdz/solr-ocrhighlighting/releases/download/0.8.3/solr-ocrhighlighting-0.8.3-solr78.jar ${SOLR_HOME}/contrib/ocrhighlighting/lib/
USER solr
