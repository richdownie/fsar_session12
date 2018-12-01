Before do
  if ENV["CHROME"]
    @browser = Selenium::WebDriver.for :chrome
  else
    @browser = Selenium::WebDriver.for :chrome, desired_capabilities: $caps
  end
  @fsar_api_key = "replace_with_your_fsar_api_key"
  @domain = 'https://fullstackautomationwithruby.com'
end