Dado("que eu acesso o plataforma com meu cliente ja cadastrado") do
  @login_page.login
end

Quando("clico no botao filtrar") do
  @concessao_page.btn_filtrar
end

Quando("pesquiso o cliente") do
  @concessao_page.search_cnpj
end

Quando("clico no botao Confirmar") do
  @concessao_page.btn_confirmar
end

Quando("clico no olhinho") do
  @concessao_page.toclick_olhinho
end

Quando("eu clico na aba Credito,seleciono a opção Alterar Limite") do
  @concessao_page.btn_alterar_limite
end

Quando("insiro um valor para aprovar a concessao") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("visualizo que a concessao foi aprovada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("posso informar um valor de concessao negada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("posso informar um valor de concessao rejeitada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("posso informar um valor de concessao aprovada") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("seleciono a situação do cliente como inativo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("visualizo o campo Status do cliente com valor inativo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("visualizo a mensagem {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("visualizo o campo Status do cliente") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("visualizo a mensagem que o cliente esta bloqueado") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("visualizo que foi atribuida a mesma concessao para cliente e filial") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao('visualizo a mensagem que informa que o CPF\/CNPJ, CEP , Endereço e Bairro estao vazios') do
  pending # Write code here that turns the phrase above into concrete actions
end
