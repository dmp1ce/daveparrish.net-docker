FROM dmp1ce/hakyll@sha256:0053fdef1e10ab228d7a6dd18bc5133f5be8a2c3d3212e793d389c15eb5ea02c
MAINTAINER David Parrish <daveparrish@tutanota.com>

# Create hostuser
RUN groupadd -g {{PROJECT_HOST_GROUPID}} -o hostuser && \
useradd -m -u {{PROJECT_HOST_USERID}} -g {{PROJECT_HOST_GROUPID}} hostuser

USER hostuser

# Add start script
COPY ./ {{PROJECT_BUILD_PATH}}/build_context
