ARG BASE_IMG="231224489621.dkr.ecr.us-east-1.amazonaws.com/solr:2.1"
FROM ${BASE_IMG}

RUN rm -rf ${SOLR_CORE_DIR}/conf/
# XXX: User and Group IDs are necessary due to an open issue with buildx: https://github.com/docker/buildx/issues/1526
COPY --link --chown=${SOLR_UID}:${SOLR_GID} conf ${SOLR_CORE_DIR}/conf/
USER solr
