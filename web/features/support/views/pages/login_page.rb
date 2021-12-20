class LoginPage < SitePrism::Page
  element :username, "#username"
  element :password, "#password"
  element :btn_login, ".login-button"
  element :lbl_clientes, ".text-ellipsis.po-font-subtitle.text-bold"

  include Capybara::DSL

  def open
    visit "/"
  end

  def preencher_login_dados_validos
    username.set "multitenancy.credito@suaempresa.fluig.com"
    password.set "Multitenancy@123"
    btn_login.click

    sleep 5
  end

  def logged
    return page.has_css?(".text-bold")
  end

  def inform_domain(dominio)
    find("#domain").set dominio
  end

  def validate_message(mensagem)
    find("#username").set mensagem
  end

  # "multitenancy.credito@suaempresa.fluig.com" e "Multitenancy@123"

end
