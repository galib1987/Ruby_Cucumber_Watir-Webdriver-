When(/^User Enter Valid User ID$/) do
  sleep 5
  @browser.link(text:"Menu").click
  sleep 5
  @browser.link(text:"Sign In").click


  @browser.text_field(id: "user_username").set "user1"

end

Then(/^User is able to successfully login to the applicaton$/) do

  ui_text = @browser.div(text: "Signed in successfully.").text

  puts  ui_text

  if @browser.div(text: "Signed in successfully.").text.present?


    puts  "The UI text is: #{ui_text}"
    puts "Test Passed, Login Successful"

   end
  end

And(/^User Enter Valid Password$/) do
  @browser.text_field(id: "user_password").set "password"
end

And(/^User Click Sign in$/) do
  @browser.input(value:"Sign In").click
end


When(/^User Enter a Valid User id as (.*)$/) do |user_id|

  sleep 20
  @browser.link(text:"Menu").click

  sleep 20
  @browser.link(text:"Sign In").click

  sleep 10
  @browser.text_field(id:"user_username").set user_id

end

And(/^User Enter a Valid Password as(.*)$/) do |password|

  sleep 10
  @browser.text_field(id: "user_password").set password
end

Then(/^User failed to login into the application$/) do

  sleep 2
  ui_text = @browser.p(text: "Invalid email or password.").text

  if @browser.p(text: "Invalid email or password.").present?
    puts "Test Passed"
    sleep 2
    puts "UI Text: #{ui_text}"

  else
    puts "test failed"

  end
end

And(/^user sign out$/) do
  @browser.link(text:"Menu").click
  @browser.link(text:"Sign Out").click


end