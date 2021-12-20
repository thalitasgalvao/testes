#language:pt
#encoding: utf-8

Funcionalidade: Configurações
    Sendo um cliente Mais Negocios
    Quero verificar as configurações do Mais Negocios
    Para obter informações sobre valores, prazo , parametros e outros dados

    @config 
    Cenario: Visualizar detalhes

        Dado que eu visite a pagina de Config. Mais Negocios
        Quando clico no botao Detalhes
        Entao visualizo os detalhes das configurações

    @config @visualizar
    Cenario: Visualizar dados dos clientes

        Dado que eu visite a pagina de Config. Mais Negocios
        Quando clico no CNPJ do cliente
        Entao visualizo os dados detalhados da empresa

    @config @atualizar
    Cenario: Atualizar parametros

        Dado que eu visite a pagina de Config. Mais Negocios
        Quando clico no botao Atualizar parametros
        Entao visualizo a mensagem que o Mais Negocios esta sendo configurado
