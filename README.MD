O projeto foi desenvolvido usando BDD com Ruby e Cucumber (https://cucumber.io/)


**Para executar o projeto:**
1 - Instalar o ruby (versão usada ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x64-mingw32])

2 - Acessar a pasta risk-automation\Cucumber

3 - executar o comando: bundler install

4 - executar o comando: bundler

5 - baixar a versão do chromedriver em https://chromedriver.chromium.org/downloads compativel com o navegador chrome e descompactar na pasta c:\windows

6 - executar o comando para testar: cucumber -t @login


## **Para executar o relatório do Allure**

1 - baixar o arquivo .zip em https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/2.8.0/

2 - descompactar em qualquer paste e colocar o /bin no path do windows

3 - executar o projeto com o profilw -p report. Ex: cucumber -t @login -p report

4 - executar o comando: allure serve report
