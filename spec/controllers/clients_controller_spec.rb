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
    context 'with valid data' do
      it "successfully creates a new client in the database" do
        expect {FactoryBot.create(:client)}.to change {Client.count}
      end
    end

    context "no first name" do
      it "is not valid without first name" do
        client1 = FactoryBot.build(:client, first_name: '')
        expect(client1).to_not be_valid
      end
    end

    context "no last name" do
      it "is not valid without last name" do
        client1 = FactoryBot.build(:client, last_name: '')
        expect(client1).to_not be_valid
      end
    end

    context "no company" do
      it "is not valid without company name" do
        client1 = FactoryBot.build(:client, company: '')
        expect(client1).to_not be_valid
      end
    end

    context "no title" do
      it "is not valid without title" do
        client1 = FactoryBot.build(:client, title: '')
        expect(client1).to_not be_valid
      end
    end

    context "no telephone" do
      it "is not valid without telephone" do
        client1 = FactoryBot.build(:client, telephone: '')
        expect(client1).to_not be_valid
      end
    end    

    context "no email" do
      it "is not valid without email" do
        client1 = FactoryBot.build(:client, email: '')
        expect(client1).to_not be_valid
      end
    end 
    
  end


end



