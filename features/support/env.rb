require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'faker'
require 'cpf_faker'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://localhost:8080'
    config.default_max_wait_time = 30
end
