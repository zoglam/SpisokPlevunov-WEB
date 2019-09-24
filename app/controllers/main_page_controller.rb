class MainPageController < ApplicationController

  def index
    @spisokofnames = SpisokOfName.all.order(:id)
    @emails = Email.all.order(:id)
  end

  def createSpisok
    @newSpisok = SpisokOfName.create(spisok_params)
    @newSpisok.save
    ApplicationMailer.send_mailer(@newSpisok.names)
    redirect_to root_path
  end

  def createEmail
    if Email.where(:email => email_params[:email]) != []
      flash[:error_email] = "Данная почта уже существует в базе!"
    else
      @newEmail = Email.create(email_params)
      @newEmail.save      
    end    
    redirect_to root_path  
  end

  def deleteEmail
    @deleteEmail = Email.destroy(email_params_forDelete[:id])    
    redirect_to root_path      
  end

  def spisok_params
    params.require(:newSpisok).permit(:names)
  end

  def email_params
    params.require(:newEmail).permit(:name, :secondName, :email)
  end

  def email_params_forDelete
    params.require(:deleteEmail).permit(:id)
  end

end
