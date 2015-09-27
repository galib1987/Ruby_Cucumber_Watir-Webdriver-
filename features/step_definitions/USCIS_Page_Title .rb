Given(/^User Visit USCIS home page$/) do
  @browser.goto "http://192.168.8.105:3000/"
  @browser.window.maximize

end


Then(/^User Varify the Page Title$/) do

  sleep 3
  if @browser.title.present?
    puts "@browser.title"
  else
    puts "Title is not present"
  end
end


Then(/^User Varify the USCIS logo$/) do
  if @browser.img(id:"small-uscis-logo").present?

    puts "test passed"
    puts "Logo is here"
    puts @browser.img(id:"small-uscis-logo").text
    puts @browser.img(id:"small-uscis-logo").html
  else
    puts "logo is not here"
  end
end

Then(/^User Varify the total number$/) do
  puts @browser.links.count
end


Then(/^User Varify the total number of link at home page$/) do
  total_link = @browser.links.count

  if total_link == 10
    puts "test pass"
    puts "Total Number of Link is: #{total_link}"
  end
end

Then(/^User Varify the total number of buttons at home page$/) do

  total_button = @browser.buttons.count

  if total_button == "0"
    puts "test pass"
    puts "Total Number of button is: #{total_link}"
  else
    puts "test failed"
  end
end

When(/^User clicks on Terms & Accessibility link at home page$/) do

  sleep 2
  @browser.link(text: "Terms & Accessibility").click 
end

Then(/^User successfully navigated to the destination page$/) do

   sleep 5
   text = @browser.div(text: "Accessiblity Statement").text

   #expect().to eql? "Accessibility Statement"

   expect(text).to eq("Accessibility Statement")

  # if text == "Accessibility Statement"
  #   puts "test passed"
  #   puts "Expected text is Accessibility Statement and the UI Text is: #{text} "
  #
  # else
  #   puts "test failed"
  #   puts "UI Text: #{text}"
  #   puts "Expected text is Accessibility Statement and the UI Text is: #{text} "
  # end
end

