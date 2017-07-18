require_relative 'helper.rb'

Before do |feature|

  CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT_TYPE}.yaml")

  I18n.config.available_locales = :en


  Capybara.configure do |config|
    config.default_driver = :selenium
  end

  Capybara.default_max_wait_time = 10


  @login_page = LoginPage.new
   visit('https://app-staging.rdstation.com.br/login')
  @login_page.log_in("antoniopereiraof@gmail.com", "123456")

end

After do |scenario|
  @helper = Helper.new
  if scenario.failed?
    @helper.take_screenshot(scenario.name, 'screenshots/test_failed')
  end
end

After('@create_baseline_image') do |scenario|
  @helper = Helper.new
  @helper.take_screenshot(scenario.name, 'screenshots/baseline')
end
