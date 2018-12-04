class WidgetNew

  def initialize(browser, domain)
    @browser = browser
    @domain = domain
  end

  def visit(key)
    @browser.get(@domain + "/widgets/new?fsar_api_key=#{key}")
  end

  def name
    @browser.first(id: 'widget_name')
  end

  def description
    @browser.first(id: 'widget_description')
  end

  def widget_form
    @browser.first(name: 'commit')
  end

end