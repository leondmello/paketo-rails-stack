FROM cnbs/rails-stack-base:jammy as build

RUN apt-get update && \
  apt-get install -y libpq-dev && \
  rm -rf /var/lib/apt/lists/*

USER ${CNB_USER_ID}:${CNB_GROUP_ID}
