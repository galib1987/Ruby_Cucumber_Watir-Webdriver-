And(/^User Visit Admin portal from Menu$/) do

  @browser.link(text:"Menu").click
  @browser.link(text:"Administration").click
end

When(/^User clicks on "([^"]*)" to Add a new record$/) do |arg|
  @browser.link(text:"View groupings records").click

end

And(/^User clicks "([^"]*)"$/) do |arg|

  sleep 1
  @browser.link(text: "Create new grouping").click

end


And(/^User insert "(.*)"$/) do |arg|

  @browser.text_field(id:"grouping_name").set arg
end


And(/^User clicks on "([^"]*)"$/) do |arg|
  @browser.input(value: "Create Grouping").click
end


Then(/^User Varify the "(.*)" group added properly$/) do |arg|
  cell_text = @browser.td(text:arg).text
  puts "UI text is: #{cell_text}"
  expect(cell_text).to eq(arg)
end