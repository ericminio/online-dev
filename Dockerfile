FROM codercom/code-server:latest

RUN mkdir -p ~/.config

RUN curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
ENV NVM_DIR=/home/coder/.nvm
RUN . /home/coder/.nvm/nvm.sh \
    && nvm install --lts
