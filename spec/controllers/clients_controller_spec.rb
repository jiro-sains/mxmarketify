require 'rails_helper'

RSpec.describe ClientsController, type: :controller do
  describe "clients#index action" do
    it "should sucessfullyy show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "clients#new action" do
    it "should successfully show the new form" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "clients#create action" do
    it "should successfully create a new client in the database" do
      post :create, params: { client: { first_name: "John", last_name: "Smith", company: "Acme" } }
      expect(response).to redirect_to root_path

      client = Client.last
      expect(client.first_name).to eq("John")
      expect(client.last_name).to eq("Smith")
      expect(client.company).to eq("Acme")
    end
  end
end
