ARG BASE_IMG="ghcr.io/discoverygarden/solr:2.1.5"
FROM ${BASE_IMG}

RUN rm -rf ${SOLR_CORE_DIR}/conf/
# XXX: User and Group IDs are necessary due to an open issue with buildx: https://github.com/docker/buildx/issues/1526
COPY --link --chown=${SOLR_UID}:${SOLR_GID} conf ${SOLR_CORE_DIR}/conf/
USER solr
