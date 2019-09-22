class MainPageController < ApplicationController
  def index
    @spisokofnames = SpisokOfName.all.order(:id)
    @emails = Email.all.order(:id)
  end
end
