

Given(/^I login to Lilo application$/) do

  #@browser.goto "http://liloui-lat.wdw.disney.com/PMS"
  @browser.goto "http://liloui-lat.wdw.disney.com/PMS/pms/resmgt/page/routingPage.faces"

  sleep 3

  @browser.text_field(name:"USER").set "test1212.user"
  @browser.text_field(name:"PASSWORD").set "mickey"
  @browser.button(value:"Sign In").click

  sleep 5
  @browser.input(xpath:".//*[@id='bankInForm:routeId']").click

end


When(/^I do a Quick Book$/) do

  sleep 2
  
  @browser.link(id: "menuForm:quickbook").click
  @browser.text_field(id:"quickBookForm:firstNameId").set "Sheikh"
  @browser.text_field(id:"quickBookForm:lastNameId").set "Galibllll"

      if @browser.button(id:"quickBookForm:quickBookButtonId").exist?
             sleep 3

             @browser.button(id:"quickBookForm:quickBookButtonId").click
      else
             sleep 3
             @browser.button(id:"quickBookForm:quickBookButtonId").click
      end

end

Then(/^I see Quick Booking Was successful$/) do

  puts "test pass"

  actual = @browser.span(id:"travelSummeryFrm:travelPlanId").text

  expect(actual).to eql? .*
end