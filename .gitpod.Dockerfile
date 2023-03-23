FROM gitpod/workspace-full-vnc

USER gitpod

# Install Eclipse deps
RUN sudo apt-get update \
    && sudo apt-get install -y \
        libxtst-dev

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
    sdk install java 19.0.2-open && \
    sdk default java 19.0.2-open"

# Download Eclipse GUI installer
RUN wget -c "https://eclipse.mirror.rafal.ca/oomph/epp/2023-03/R/eclipse-inst-linux64.tar.gz" \
    -O - | tar -xpz -C $HOME
