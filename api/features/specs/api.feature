#language: pt
#encoding: utf-8

@vendaprazo-unitario
Funcionalidade: Venda a prazo

  Cenario: Usuário sem bloqueio
    Dado que exista um CNPJ com concessão
    Quando solicito a API de venda a prazo no parceito
    Então a venda é permitida

@vendaprazo
Esquema do Cenario: Venda a prazo utilizando limite interno
   Dado que exista um "<CNPJ>"" com concessão
   Quando solicito a API de venda a prazo
   Entao o retorno é o "<status>""
 
 Exemplos: 
 |  CNPJ           | status |
 |  00746432000146 | S      |
 |  01913005000178 | S      |
 |  61655742000140 | N      |
 |  31678375000139 | N      |
