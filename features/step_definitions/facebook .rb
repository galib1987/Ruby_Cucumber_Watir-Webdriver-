

Given(/^I execute test for faceboook$/) do

  @cnf = YAML::load(File.open('./features/support/sample.yml'))

  @browser.goto ENV["SOURCE_URL"]

  #@browser.goto "www.facebook.com"
  sleep 2
  @browser.text_field(:id => "u_0_b").set @cnf['User1']['firstname']
  @browser.text_field(id: "u_0_d").set @cnf['User1']['lastname']
  @browser.text_field(id: "u_0_f").set @cnf['User1']['email1']
  @browser.text_field(id: "u_0_i").set @cnf['User1']['email2']
  @browser.text_field(id: "u_0_k").set @cnf['User1']['password']
  @browser.select_list(id: "month").select @cnf['User1']['month']
  @browser.select_list(id: "day").select @cnf['User1']['date']
  @browser.select_list(id: "year").select @cnf['User1']['year']
  @browser.radio(id: "u_0_n").click
  @browser.button(id: "u_0_s").click

   sleep 5

  #this is my expected text
   expected = "Sorry, it looks like atanu_bsl@yahoo.com belongs to an existing account. Would you like to ?"

  #this is my actual text coming from application
   actual = @browser.form(id:"u_9_0").text

  #printing the actual text
   puts "text found = #{actual}"

   expect(actual).to eql expected

end




