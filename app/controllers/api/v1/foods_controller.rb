class Api::V1::FoodsController < ApplicationController
  skip_before_action :verify_authenticity_token
  respond_to :json

  def search
    @food = Food.find_by_name(params[:q])
    @locations = []
    if @food.present?
      @locations = @food.locations
    end
    return :json => @locations
  end
end