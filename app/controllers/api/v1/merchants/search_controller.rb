class Api::V1::Merchants::SearchController < ApplicationController
  def show
    render json: MerchantSerializer.new(Merchant.find_by_params(params))
  end

  def index
    render json: MerchantSerializer.new(Merchant.find_all_by_params(params))
  end
end
