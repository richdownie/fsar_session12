Before do
  if ENV["CHROME"]
    @browser = Selenium::WebDriver.for :chrome
  else
    @browser = Selenium::WebDriver.for :chrome, desired_capabilities: $caps
  end
  @fsar_api_key = ""
  if @fsar_api_key.empty?
    puts "1. Please Sign In https://fullstackautomationwithruby.com/users/sign_in."
    puts "2. Visit your PROFILE page."
    puts "3. Copy and paste your @fsar_api_key in features/support/env.rb."
  end
  @domain = 'https://fullstackautomationwithruby.com'
end
