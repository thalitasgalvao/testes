require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/all_there' 
require 'httparty'
require 'allure-cucumber'

# inicializa do driver do chrome apenas em testes com @tela
Before('@tela') do
    
    # Registrando o driver
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)  
    end

    # Configurando o driver
    Capybara.configure do |config|
      config.run_server = false
      Capybara.default_driver = :chrome
      Capybara.page.driver.browser.manage.window.maximize
      config.default_max_wait_time = 10
    end
end 

# inicializa o report allure
AllureCucumber.configure do |config|
  config.results_directory = "report/allure-results"
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
  config.logger = Logger.new($stdout, Logger::DEBUG)
  config.environment = "dev"

  # these are used for creating links to bugs or test cases where {} is replaced with keys of relevant items
  config.link_tms_pattern = "http://www.jira.com/browse/{}"
  config.link_issue_pattern = "http://www.jira.com/browse/{}"

  # additional metadata
  # environment.properties
  config.environment_properties = {
    custom_attribute: "atributo_personalizado_teste"
  }
  # categories.json
  #config.categories = File.new("my_custom_categories.json")
end

#TODO: implementar print em caso de erro
#Allure.add_attachment(name: "attachment", source: "Some string", type: Allure::ContentType::TXT, test_case: true)
#Allure.add_link("Custom Url", "http://www.github.com")