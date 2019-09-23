class MainPageController < ApplicationController

  def index
    @spisokofnames = SpisokOfName.all.order(:id)
    @emails = Email.all.order(:id)
  end

  def create
    @newSpisok = SpisokOfName.create(spisok_params)
    @newSpisok.save

    ApplicationMailer.mailer().deliver
    redirect_to root_path
  end

  def spisok_params
    params.require(:newSpisok).permit(:names)
end   

end
