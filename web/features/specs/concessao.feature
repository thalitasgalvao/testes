#language:pt
#encoding: utf-8

Funcionalidade: Concessao
        Sendo um cliente Mais Negocios
        Quero fazer uma concessao de credito
        Para obter limite para comprar insumos

        @concessao
        Cenario: Concessao aprovada

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E clico no botao Confirmar
                        E clico no olhinho
                        E insiro um valor para aprovar a concessao
                Entao visualizo que a concessao foi aprovada


        Cenario: Concessao negada

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E clico no botao Confirmar
                        E clico no olhinho
                        E eu clico na aba Credito,seleciono a opção Alterar Limite
                Entao posso informar um valor de concessao negada


        Cenario: Concessao rejeitada

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E clico no botao Confirmar
                        E clico no olhinho
                        E eu clico na aba Credito,seleciono a opção Alterar Limite
                Entao posso informar um valor de concessao rejeitada


        Cenario: Alteração concessao aprovada

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E clico no botao Confirmar
                        E clico no olhinho
                        E eu clico na aba Credito,seleciono a opção Alterar Limite
                Entao posso informar um valor de concessao aprovada


        Cenario: Alteração concessao negada

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E clico no botao Confirmar
                        E clico no olhinho
                        E eu clico na aba Credito,seleciono a opção Alterar Limite
                Entao posso informar um valor de concessao negada


        Cenario: Alteração concessao rejeitada

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E clico no botao Confirmar
                        E clico no olhinho
                        E eu clico na aba Credito,seleciono a opção Alterar Limite
                Entao posso informar um valor de concessao rejeitada


        Cenario: Pesquisar por cliente inativo

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E seleciono a situação do cliente como inativo
                        E clico no botao Confirmar
                        E visualizo o campo Status do cliente com valor inativo
                        E clico no olhinho
                Entao visualizo a mensagem "Cliente inativo no ERP."


        Cenario: Pesquisar por cliente inativo no banco de dados

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E seleciono a situação do cliente como inativo
                        E clico no botao Confirmar
                        E visualizo o campo Status do cliente com valor inativo
                        E clico no olhinho
                Entao visualizo a mensagem "Cliente inativo no ERP."


        Cenario: Pesquisar por cliente bloqueado na Supplier

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E seleciono a situação do cliente como inativo
                        E clico no botao Confirmar
                        E visualizo o campo Status do cliente
                        E clico no olhinho
                Entao visualizo a mensagem que o cliente esta bloqueado


        Cenario: Cliente com filial

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E clico no botao Confirmar
                        E clico no olhinho
                        E eu clico na aba Credito,seleciono a opção Alterar Limite
                Entao visualizo que foi atribuida a mesma concessao para cliente e filial


        Cenario: Cliente sem contato

                Dado que eu visite a pagina do Plataforma
                Quando insiro os dados de login
                        E sou direcionado a pagina de Clientes
                        E clico no botao filtrar
                        E pesquiso o cliente
                        E clico no botao Confirmar
                        E clico no olhinho
                        E eu clico na aba Credito,seleciono a opção Alterar Limite
                Entao visualizo a mensagem que informa que o CPF/CNPJ, CEP , Endereço e Bairro estao vazios
