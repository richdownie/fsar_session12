options = Selenium::WebDriver::Chrome::Options.new(args: ['--headless'])

Before do
  if ENV["CHROME"]
    @browser = Selenium::WebDriver.for :chrome
  else
    @browser = Selenium::WebDriver.for :chrome, options: options
  end
  @fsar_api_key = ""
  if @fsar_api_key.empty?
    puts "1. Please Sign In https://fullstackautomationwithruby.com/users/sign_in."
    puts "2. Visit the PROFILE page."
    puts "3. Copy and paste your @fsar_api_key in line:9 of the features/support/hooks.rb file."
  end
  @domain = 'https://fullstackautomationwithruby.com'
  @widgets_index = WidgetsIndex.new(@browser, @domain)
  @widget_new = WidgetNew.new(@browser, @domain)
end