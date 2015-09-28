And(/^User clicks on Menu$/) do
  sleep 2
  @browser.link(text:"Menu").click

end

And(/^User login using valid credential$/) do
  @browser.link(text:"Menu").click
  @browser.link(text:"Sign In").click
  @browser.text_field(id: "user_username").set "user5"
  @browser.text_field(id: "user_password").set "password"
  @browser.input(value:"Sign In").click
end

When(/^User visit Idea Submission section$/) do
  @browser.link(text:"Menu").click
  @browser.link(text:"Idea Submissions").click
end

Then(/^User validate user is at Idea Submission Page$/) do
  ui_text = @browser.h1(text: "Idea Submissions").text

  expect(ui_text).to eq ("Idea Submissions")
end

When(/^User clicks on "([^"]*)" button$/) do |arg|
  @browser.button(text: "Share Your Idea").click
end

And(/^User Selects a Dropdown from Appropiate Project$/) do
  @browser.select_list(id: "project_request_project_id").select "Bruen, Walsh and Wintheiser (Bayer-Hoppe)"

end

And(/^User Selects a Dropdown from Category$/) do
  @browser.select_list(id: "idea_idea_category_id").select "Business Idea"
end

And(/^User inserts ideas$/) do
  @browser.text_field(id: "idea_idea_message").set "This is UICIS Demo idea"
end

And(/^User clicks on Submit Idea$/) do
  @browser.input(value: "Submit Idea").click
end

Then(/^User validates that idea was updated$/) do
  ui_text = @browser.p(text: "Your idea was successfully submitted.").text
  expect(ui_text).to eq ("Your idea was successfully submitted.")
end