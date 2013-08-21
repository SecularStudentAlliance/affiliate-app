class AffiliatesController < ApplicationController

  def index
    @affiliates = Affiliate.all
  end

  def show
    @affiliate = Affiliate.find(params[:id])
  end

  def new
    @affiliate = Affiliate.new
  end

  def create
    affiliate = Affiliate.create(params[:affiliate])
    redirect_to affiliate
  end

  def edit
    @affiliate = Affiliate.find(params[:id])
  end

  def update
    affiliate = Affiliate.find(params[:id])
    affiliate.update_attributes(params[:affiliate])
    redirect_to affiliate
  end

  def destroy
    affiliate = Affiliate.find(params[:id])
    affiliate.destroy
    redirect_to affiliates_path
  end

end