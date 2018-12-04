Given /I am on the fsar widgets page/ do
  @widgets_index.visit
end

Given(/^I am on the new widget page$/) do
  @browser.get(@domain + "/widgets/new?fsar_api_key=#{@fsar_api_key}")
  # @widget_new.visit(@fsar_api_key)
end

Given /I create a new widget/i do
  @widget_new.name.send_keys("BOT_DATA_WidgetName#{rand(999).to_s}")
  @widget_new.description.send_keys("BOT_DATA_WidgetDescription")
  @widget_new.widget_form.submit
end

