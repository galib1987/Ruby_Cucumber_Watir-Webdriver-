class HomePage

  def initialize browser
    @contact_us = browser.link(text: "Contact us")
    @sign_in = browser.link(text: "Sign in")
  end

  def contact_us
    @contact_us
  end

  def sign_in
    @sign_in
  end

end