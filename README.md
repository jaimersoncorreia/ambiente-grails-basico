# Ambiente Grails Básico

O ambiente Grails básico tem como intuito permitir que o usuário consiga testar e rodar suas aplicações Grails sem precisar instalar o Grails diretamente em sua máquina. O repositório público no Docker Hub e informações de como utilizá-lo estão disponível em: https://hub.docker.com/r/vaidegrails/ambiente-grails-basico/

Para construir localmente esse ambiente use o seguinte comando:

**docker build https://github.com/vaidegrails/ambiente_grails_basico.git**

Se preferir, pode clonar o repositório, entrar no diretório, e construir o ambiente usando:

**docker build .**

Desses dois modos, será gerada uma imagem sem repositório e sem tag. É recomendável criar uma tag para a imagem na hora de construir o ambiente. Para isso basta adicionar o seguinte parâmetro nos comandos anteriores:

**-t \<repositorio\>[:\<tag\>]**

Por exemplo, para o respositório vaidegrails/ambiente_grails_basico, e tag 2.0.0 teremos respectivamente para os dois comandos:

**docker build -t vaidegrails/ambiente_grails_basico:2.0.0 https://github.com/vaidegrails/ambiente_grails_basico.git**

**docker build -t vaidegrails/ambiente_grails_basico:2.0.0 .**
