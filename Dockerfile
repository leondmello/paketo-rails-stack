# 1. Set a common base
FROM ubuntu:jammy as base

# 2. Set required CNB information
ENV CNB_USER_ID=1000
ENV CNB_GROUP_ID=1000
ENV CNB_STACK_ID="io.buildpacks.stacks.jammy"
LABEL io.buildpacks.stack.id="io.buildpacks.stacks.jammy"

# 3. Create the user
RUN groupadd cnb --gid ${CNB_GROUP_ID} && \
  useradd --uid ${CNB_USER_ID} --gid ${CNB_GROUP_ID} -m -s /bin/bash cnb

# 4. Install common packages
RUN apt-get update && \
  apt-get install -y ca-certificates libpq5 && \
  rm -rf /var/lib/apt/lists/*
