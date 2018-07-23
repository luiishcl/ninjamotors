require 'capybara'
require 'capybara/cucumber'

# Subir o navegador - Firefox default
# para Chrome usar: selenium_chrome
Capybara.configure do |config|
  config.default_driver = :selenium
end

# tempo de configuração para encontrar o elemento
Capybara.default_max_wait_time = 5
