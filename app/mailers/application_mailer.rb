class ApplicationMailer < ActionMailer::Base
  default from: 'person_write@list.ru'

  def self.send_mailer(newSpisok)
    @newSpisok = "Список: " + newSpisok + ".\n\nС уважением, Главный плевун"
    @Emails = Email.all.order(:id)

    @Emails.each do |emails|
      @current_email = emails.email
      mailer(@current_email, @newSpisok).deliver
    end

  end

  def mailer(current_email, newSpisok)  
    @newSpisok = newSpisok
    @current_email = current_email
    mail( :to => @current_email,
      :subject => 'Список кому не плевать',
      :body => @newSpisok)
  end

end