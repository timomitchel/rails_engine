class Api::V1::Items::ItemsMerchantController < ApplicationController

  def show
   render json:  Item.find(params[:id]).merchant, serializer: MerchantSerializer
  end


end
