Before do
  #ganchos que serao executados antes de cada cenario
  @login_page = LoginPage.new
  @concessao_page = ConcessaoPage.new
  @config_page = ConfigPage.new
  @historico_page = HistoricoPage.new
end

After do
  temp_shot = page.save_screenshot("logs/temp_screenshot.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
end
