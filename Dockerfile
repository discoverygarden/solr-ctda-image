FROM 231224489621.dkr.ecr.us-east-1.amazonaws.com/solr:1.0.0

RUN rm -rf ${SOLR_CORE_DIR}/conf/
COPY --chown=solr:solr conf ${SOLR_CORE_DIR}/conf/
USER solr
