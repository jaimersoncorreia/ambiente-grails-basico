FROM ubuntu:14.04
LABEL maintainer="Jaimerson Correia dos Santos"
LABEL email="jaimersonsantos@ufam.edu.br"
LABEL reference="https://hub.docker.com/r/vaidegrails/ambiente-grails-basico"

### Instalação de programas auxiliares ###
RUN apt-get update \
	&& apt-get install -y \	
	curl \
	git \
	vim \
	unzip \		
	zip \
	&& rm -rf /var/lib/apt/lists/*

### Criação e utilização do usuário developer ###
RUN useradd -p "" -ms /bin/bash developer
ENV HOME /home/developer

USER developer

### Definição do diretório de trabalho ###
WORKDIR $HOME

###### Instalação do Grails 4.0.10  e java 8.0.312-zulu ######
RUN curl -s get.sdkman.io | bash 
RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh \
	&& sdk install grails 4.0.10 && sdk install java 8.0.312-zulu"

### Exposição da porta utilizada para desenvolvimento ###
EXPOSE 8080
