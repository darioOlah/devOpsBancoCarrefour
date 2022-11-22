Descrição:


Neste desafio de projeto crio um Cluster Swarm local, utilizando máquinas virtuais, além, de aplicar nossos conhecimentos em Vagrant. Também vamos aprender uma forma de evitar as implementações manualmente, melhorando o desempenho dos desenvolvedores.

PASSO A PASSO:


- Criar um Vagrantfile com as definições de 4 máquinas virtuais. Sendo uma máquina com o nome de master e as outras com os nomes de node01, node02 e node03; 

- Cada máquina virtual deverá ter um IP fixo; 

- Todas as MV deverão possuir o Docker pré-instalado; 

- A máquina com o nome de master deverá ser o node manager do cluster. 

- As demais máquinas deverão ser incluídas no cluster Swarm como Workers. 



COLOCANDO EM PRÁTICA:

1 - Abra o PowerShell no diretório que deseja armazenar o projeto;

2 - Clone o repositório: git clone https://github.com/darioOlah/devOpsBancoCarrefour.git

3 - Entre no diretório: cd devOpsBancoCarrefour/docker-projeto2-cluster/

4 - Execute o Vagrantfile para criar e configurar o node manager e os nodes workers: vagrant up

5 - Após criar e executar todas as 4 MVs, acesse a MV master: vagrant ssh master

6 - Entre no diretório: cd vagrant/

7 - Execute o arquivo para iniciar o serviço no manager: ./service-manager.sh 

8 - Pronto o serviço será iniciado nos 3 nodes workers, aguarde alguns segundos para acessar o conteúdo.

Acesse os IPs no browser de sua preferência: 
 - 10.10.10.101
 - 10.10.10.102
 - 10.10.10.103
 - 10.10.10.104
 
 
Pré-requisitos:


Conhecimento Básico em Linux;

Conhecimento Básico em GitHub;

Conhecimento Básico em Docker (Cluster Swarm);

Conhecimento Básico em Visual Studio Code;

Oracle VM VirtualBox ou similar instalado;

Computador com SO de sua preferência (Windows, Linux, Mac OS).
