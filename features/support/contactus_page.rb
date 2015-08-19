class ContactusPage

  def initialize browser
    @email = browser.text_field(id: 'email')
    @message = browser.text_field(id: 'message')
  end

  def email
    @email
  end

  def message
    @message
  end
end