Before do

  # browser = ENV['BROWSER']
  # @browser = Watir::Browser.new browser.to_sym

  @browser = Watir::Browser.new :firefox

end


After do |scenario|
  if scenario.failed?
    @browser.screenshot.save (scenario.name+".png")
    embed(scenario.name+".png", 'image/png')
  end
  @browser.quit
end


#
# #
# After do
#   @browser.quit
# end
