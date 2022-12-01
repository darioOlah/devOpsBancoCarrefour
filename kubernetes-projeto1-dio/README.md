Descrição:

Neste projeto realizado um deploy de uma aplicação completa com frontend, backend e database mysql. 

No desenvolvimento do projeto serão criadas as imagens dos contêineres e serviços necessários no kubernetes para que a aplicação esteja pronta para produção.

PASSO A PASSO:

Os arquivos básicos de Front/Back-end foram disponibilizados no GitHub do Tutor: https://github.com/denilsonbonatti/k8s-projeto1-app-base.git

1 - Entrar no diretório backend e dentro dele:
 - 1.1 - Criar o arquivo dockerfile com a configuração e imagem do php:7.4-apache;
 - 1.2 - Realizar o build da imagem e realizar o push para o seu Hub Docker.

2 - Criar um diretório chamado database e dentro dele:
 - 2.1 - Criar o arquivo dockerfile com a configuração e imagem do mysql:5.7;
 - 2.2 - Criar um arquivo SQL para criação da tabela;
 - 2.3 - Realizar o build da imagem e realizar o push para o seu Hub Docker.

3 - Criar os arquivos YAML na pasta raiz do projeto com as definições dos deployments do PHP, MySQL e PVC;

4 - Criar os arquivos YAML na pasta raiz do projeto com as definições dos services do PHP, MySQL;

5 - Gerar um script para automatização de todo o processo;

6 - Adicionar o EXTERNAL-IP do LoadBalancer no arquivo js.js na linha 7 url: (ex. url: 'http://34.176.196.56' );

7 - Execute o arquivo index.php em sua máquina local.

Pré-requisitos:

Conhecimento Básico em Linux;

Conhecimento Básico em Apache;

Conhecimento Básico em GitHub;

Conhecimento Básico em HTML e CSS;

Conhecimento Básico em Kubernetes Engine (Clusters);

Conhecimento Básico em Visual Studio Code;

Computador com SO de sua preferência (Windows, Linux, Mac OS).
