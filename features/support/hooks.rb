# Metodo para tirar Screebshots
require_relative 'helper'
Before do 
  page.windows[0].maximize
end

After do |scenario|
  @helper = Helper.new
  @nome = scenario.name.gsub(%r{([_@#!%()\-=;><,{}~\[\]./?"*\^$+\-]+)}, '')
  if scenario.failed?
    @helper.take_screenshot(@nome, 'report/screenshots/test_failed')
  else
    @helper.take_screenshot(@nome, 'report/screenshots/test_passed')
  end
end

