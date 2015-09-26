Given(/^User Visit USCIS home page$/) do
  @browser.goto "http://127.0.0.1:3000/"
end




Then(/^User Varify the Page Title$/) do
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