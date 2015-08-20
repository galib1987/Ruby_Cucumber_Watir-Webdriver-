#
# require 'watir-webdriver'
#
# @browser = Watir::Browser.new :firefox
#
# @browser.goto "http://nyulangone.org/"
#
# @browser.link(text: "Find a Doctor").click
#
# sleep 2
#
# @browser.span(text: "Filter by Specialty").click
#
# sleep 2
#
# #a = @browser.select_list(id:"specialty").text
# @browser.driver.manage.window.maximize
# a = @browser.option(value:"abdominal-imaging").visible?
# puts a
# @browser.execute_script("document.getElementById('specialty').visible = true")
# @browser.option(value:"abdominal-imaging").click
#  # if a == "true"
#  #   a = @browser.option(value:"abdominal-imaging").click
#  #   puts a
#  # else
#  #   @browser.driver.manage.window.maximize
#  #   a = @browser.option(value:"abdominal-imaging").click
#  #   puts a
#  # end
#
# # a.each do |element|
# #
# #   puts element
# # end
#
# @browser.quit

################################################################################################################









