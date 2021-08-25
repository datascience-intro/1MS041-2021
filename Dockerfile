# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

FROM sagemath/sagemath

RUN sudo apt update -y && sudo apt upgrade -y && sudo apt install -y man && sudo apt install -y vim

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
