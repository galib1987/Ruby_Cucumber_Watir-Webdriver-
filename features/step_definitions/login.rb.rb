Given(/^User visit home page$/) do
  @browser.goto "https://chaseonline.chase.com/Logon.aspx"
end

When(/^User put a valid ID$/) do
  @browser.text_field(id:"UserID").set "transfotech2014"


end

And(/^User put a invalid password$/) do
  @browser.text_field(id:"Password").set "efgerretrtre"
end

And(/^User click signin$/) do
  @browser.input(id:"logon").click

end

Then(/^User get error message saying "([^"]*)"$/) do |arg|


  expected_value = @browser.td(text:"Unable to Log On").text

  expect(expected_value).to eq(arg)



end