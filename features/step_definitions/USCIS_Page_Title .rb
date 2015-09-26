Given(/^User Visit USCIS home page$/) do
  @browser.goto "http://127.0.0.1:3000/"
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
    puts "test failed"
    puts "Total Number of Link is: #{total_link}"
end