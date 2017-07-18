require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require 'capybara/poltergeist'
require 'fileutils'
require "i18n"
require_relative 'helper.rb'
require 'imatcher'
require 'chunky_png'
require 'os'

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']


Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    preferences = {
    "credentials_enable_service" => false, 
    "profile.password_manager_enabled" => false 
  } 

    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => {
      'prefs' => preferences, 
    }
    )

    Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
  elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, browser: :safari)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end

IMATCHER = Imatcher::Matcher.new mode: :grayscale, tolerance: 1
