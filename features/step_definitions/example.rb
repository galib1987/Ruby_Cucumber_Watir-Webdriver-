

Given(/^I open automationpractice website$/) do
  @browser.goto "http://automationpractice.com/index.php"
end

When(/^I click Sign in$/) do
  sleep 2
  @browser.link(text: "Sign in").click
end

And(/^I sign in with "([^"]*)" and "([^"]*)"$/) do |username, password|
  @browser.text_field(id: "email").set username
  @browser.text_field(id: "passwd").set password
end

When(/^I click sign in page\-object$/) do

  @home_page = HomePage.new @browser
  @home_page.sign_in.click
end

Then(/^I sign in with "([^"]*)" and "([^"]*)" page\-object$/) do |username, password|
  @sign_in_page = SigninPage.new @browser
  @sign_in_page.email.set username
  @sign_in_page.passwd.set password
  @sign_in_page.sign_in_button.click
end

When(/^I click contact us page object$/) do
  @home_page = HomePage.new @browser
  @home_page.contact_us.click
end

Then(/^I fill the contact us form$/) do
  @contact_us_page = ContactusPage.new @browser
  @contact_us_page.email.set "abc@cyz.com"
  @contact_us_page.message.set "message"
end

When(/^I click contact us page object using page helper$/) do
  on(HomePageNew).contact_us.click
end

Then(/^I fill the contact us form using page helper$/) do
  on(ContacusPageNew).email.set "abc@xyz.com"
  on(ContactusPageNew).message.set "message"
end

Then(/^I see text "([^"]*)"$/) do |text|
  actual_text = @browser.h1(text: "My account").text
  expect(actual_text).to eql(text)
  #expected_text.should == "MY ACCOUNT"
end

And(/^I click Sign In$/) do

  @browser.button(id:"SubmitLogin").click

end


Given(/^I visit practiceselenium website$/) do
  @browser.goto "http://www.practiceselenium.com/"
end

When(/^I click on menu$/) do
  @browser.a(text:"Menu").click
end

And(/^I check out a Green Tea$/) do
  @browser.a(id:"wsb-button-00000000-0000-0000-0000-000451955160").click
end


And(/^I fill email with (.*)$/) do |email|
  @browser.text_field(id: "email").set email

end

And(/^I fill name with (.*)$/) do |name|
  @browser.text_field(id: "name").set name
end

And(/^I fill address with (.*)$/) do |address|
  @browser.text_field(id: "address").set address
end

And(/^I select a Card type as (.*)$/) do |cardtype|
  @browser.select(id: "card_type").select cardtype
end

And(/^I fill card number with (.*)$/) do |cardnumber|
  @browser.text_field(id: "card_number").set cardnumber

end

And(/^I fill card name with (.*)$/) do |card_name|
  @browser.text_field(id: "cardholder_name").set card_name
end

And(/^I fill Verification code with (.*)$/) do |verification|

  @browser.text_field(id:"verification_code").set verification
end

And(/^I click place order$/) do

  @browser.button(text:"Place Order").click
end

Then(/^I see "([^"]*)"$/) do |text|
  actual_text =  @browser.div(id:"wsb-element-00000000-0000-0000-0000-000450914921").text
  expect(actual_text).to eql text
end
