FROM ubuntu:14.04
MAINTAINER Vai de Grails! <contato@vaidegrails.com>

### Instalação de programas auxiliares ###
RUN apt-get update \
	&& apt-get install -y \	
	curl \
	git \
	gitg \	
	nano \
	software-properties-common \
	unzip \		
	&& rm -rf /var/lib/apt/lists/*

### Instalação do OpenJDK 8 ###
RUN add-apt-repository ppa:openjdk-r/ppa -y \
	&& apt-get update \
	&& apt-get install -y openjdk-8-jdk \
	&& rm -rf /var/lib/apt/lists/*

### Criação e utilização do usuário developer ###
RUN useradd -p "" -ms /bin/bash developer
ENV HOME /home/developer

USER developer

### Definição do diretório de trabalho ###
WORKDIR $HOME

###### Instalação do Grails 3.1.9 ######
RUN curl -s get.sdkman.io | bash 
RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh \
	&& sdk install grails 3.1.9"

### Exposição da porta utilizada para desenvolvimento ###
EXPOSE 8080