class Api::V1::PadsController < ApplicationController
  def destroy
    @pad = Pad.find(params[:id])
    @pad.destroy

    render json: {message: 'Pad was deleted'}
  end

end
