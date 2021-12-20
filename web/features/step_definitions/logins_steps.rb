Dado("que eu visite a pagina do Plataforma") do
  @login_page.open
end

Quando("insiro os dados de login") do
  @login_page.preencher_login_dados_validos
end

Entao("sou direcionado a pagina de Clientes") do
  expect(page).to have_content "Clientes"
end

Quando("informo o {string}") do |dominio|
  @login_page.inform_domain(dominio)
end

Então("vejo a mensagem de alerta: {string}") do |mensagem|
  @login_page.validate_message(mensagem)
end
