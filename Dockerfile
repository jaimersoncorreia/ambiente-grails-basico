FROM ubuntu:14.04
MAINTAINER Bruno Lorenço Lopes <bruno.eng.comp@gmail.com>

RUN apt-get update \
	&& apt-get install -y \	
	curl \
	git \
	gitg \	
	nano \
	software-properties-common \
	unzip \		
	&& rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:openjdk-r/ppa -y \
	&& apt-get update \
	&& apt-get install -y openjdk-8-jdk \
	&& rm -rf /var/lib/apt/lists/*

### Criação do usuário developer ###
RUN useradd -p "" -ms /bin/bash developer
ENV HOME /home/developer

USER developer

WORKDIR $HOME

###### Instalação do Grails 2.5.1 ######
RUN curl -s get.sdkman.io | bash 
RUN ls -ltra $HOME/.sdkman/bin/
RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh \
	&& sdk install grails 2.5.1"

###### Cópia do script para inicializar serviços ######
# Expoe as portas utilizadas para desenvolvimento
# Porta do Backend
EXPOSE 8080