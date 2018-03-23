require 'rails_helper'

RSpec.describe ClientsController, type: :controller do
  describe "clients#index action" do
    it "should sucessfullyy show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
