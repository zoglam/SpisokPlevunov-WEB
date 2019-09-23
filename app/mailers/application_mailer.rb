class ApplicationMailer < ActionMailer::Base
  default from: 'person_write@list.ru'
  #layout 'mailer'

  def mailer()
    mail( :to => 'list_all@list.ru',
    :subject => 'Список кому не плевать' )
  end

end
