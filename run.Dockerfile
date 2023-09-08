FROM paketobuildpacks/run-jammy-full as run

USER root

RUN apt-get update && \
  apt-get install -y postgresql-client && \
  rm -rf /var/lib/apt/lists/*

USER ${CNB_USER_ID}:${CNB_GROUP_ID}
