# 1) choose base container
# generally use the most recent tag

# base notebook, contains Jupyter and relevant tools
ARG BASE_CONTAINER=ucsdets/datahub-base-notebook:2021.2-stable

FROM $BASE_CONTAINER

LABEL maintainer="UC San Diego ITS/ETS <ets-consult@ucsd.edu>"

# 2) change to root to install packages
USER root


RUN \
  apt-get update && \
  apt-get install git-lfs


# 3) install packages using notebook user
USER crbrody

# RUN conda install -y scikit-learn


# Override command to disable running jupyter notebook at launch
# CMD ["/bin/bash"]
