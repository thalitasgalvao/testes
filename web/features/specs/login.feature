#language:pt
#encoding: utf-8

Funcionalidade: Login
    Sendo um cliente cadastrado
    Quero acessar a plataforma do Mais Negocios
    Para solicitar limite de credito

    @login
    Cenario: Login do usuário

        Dado que eu visite a pagina do Plataforma
        Quando insiro os dados de login 
        Entao sou direcionado a pagina de Clientes


    @tentativa_login
    Esquema do Cenario: Tentar logar

        Dado que eu visite a pagina do Plataforma
        Quando insiro os dados de login <email> e <password>
            E informo o <dominio>
        Então vejo a mensagem de alerta: <mensagem>

        Exemplos:
            | email               | password | dominio | mensagem                          |
            | particia_carter.com | abc123   | teste   | "Credenciais de acesso inválidas" |
            | angel_kearney.com   | pwd123   | teste   | "Credenciais de acesso inválidas" |
            | lakesha_allan.com   | pwd123   | teste   | "Credenciais de acesso inválidas" |
            |                     | pwd123   | teste   | "Credenciais de acesso inválidas" |
            | corine_wyatt.com    |          | teste   | "Credenciais de acesso inválidas" |
