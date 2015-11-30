class Api::V1::FoodsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def search
    @foods = Food.where(name: params[:q])
  end
end
