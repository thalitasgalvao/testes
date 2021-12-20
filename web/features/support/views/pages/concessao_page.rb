class ConcessaoPage < SitePrism::Page
  element :btn_filtrar, ".po-button"
  element :search_cnpj, "[class='po-input'][name='documentNumber']"
  element :search_razao_social, "[class='po-input'][name='name']"
  element :btn_confirmar, ".po-button"
  element :situacao_cliente, ".po-select-button"
  element :cliente_ativo, ".po-select-item"
  element :cliente_inativo, ".po-select-item"
  element :btn_limpar, ".po-button"
  element :toclick_olhinho, "[class='po-table-column']"

  element :tres_pontinhos, "po-table-column-actions:last-child"
  element :btn_alterar_limite, ".po-popup-item-default"
  element :btn_solicitar_credito, ".po-popup-item-default"

  include Capybara::DSL

  def btn_filtrar
    click_button "Filtrar"
  end

  def search_cnpj
    find("[class='po-input'][name='documentNumber']").set "56.527.062/0051-70"
  end

  # def search_razao_social(razao_social)
  #   find('[class='po-input'][name='name']').set
  # end

  def btn_confirmar
    click_button "Confirmar"
  end

  def toclick_olhinho
    find("[class='po-table-column']").click_button
  end

  def tres_pontinhos
    find("po-table-column-actions:last-child").click_button
  end

  def btn_alterar_limite
    click_button "Alterar Limite"
  end

  def btn_solicitar_credito
    click_button "Solicitar Crédito"
  end
end
