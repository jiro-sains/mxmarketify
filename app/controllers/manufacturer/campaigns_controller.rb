class Manufacturer::CampaignsController < ApplicationController
  before_action :authenticate_user!

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = current_user.campaigns.create(campaign_params)
    redirect_to manufacturer_campaign_path(@campaign)
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :description)
  end

end
