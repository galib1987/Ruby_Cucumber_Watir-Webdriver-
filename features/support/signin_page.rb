class SigninPage

  def initialize browser
    @email = browser.text_field(id: "email")
    @passwd = browser.text_field(id: "passwd")
    @sign_in_button = browser.button(text: 'Sign in')
  end

  def email
    @email
  end

  def passwd
    @passwd
  end

  def sign_in_button
    @sign_in_button
  end

end