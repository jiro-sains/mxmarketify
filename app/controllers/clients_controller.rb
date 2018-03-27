class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def index
  end

  def create
    @client = Client.create(client_params)
    if @client.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def client_params
    params.require(:client).permit(:first_name, :last_name, :company, :title, :telephone, :email, :decision_maker)
  end
end
