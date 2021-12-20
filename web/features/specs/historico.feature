#language:pt
#encoding: utf-8

Funcionalidade: Historico
    Sendo um cliente Mais Negocios
    Quero verificar o Historico de movimentações realizadas
    Para verificar os detalhes das concessoes enviadas

    @filtro
    Cenario: Visualizar Historico

        Dado que eu visite a pagina do Historico
        Quando filtrar pelos dados
        Entao visualizo as movimentações da empresa


    @filtro @detalhes
    Cenario: Visualizar Detalhes de movimentações

        Dado que eu visite a pagina do Historico
        Quando filtrar pelos dados
        E clico no olhinho
        Entao visualizo o detalhamento de uma movimentaçao selecionada


    @filtro @mostrarresultados
    Cenario: Visualizar Detalhes de movimentações

        Dado que eu visite a pagina do Historico
        Quando clico no botao Mostrar resuldaos 
        Entao visualizo as resultados de acordo com a opção selecionada


    @filtro @maisresultados
    Cenario: Visualizar Detalhes de movimentações

        Dado que eu visite a pagina do Historico
        Quando clico no botao Carregar mais resultados 
        Entao a pagina é atualizada com movimentações mais antigas