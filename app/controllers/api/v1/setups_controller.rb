class Api::V1::SetupsController < ApplicationController

  before_action :find_setup, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:show]

  def create
    @setup = current_user.setups.build(setup_params(:name))
    @setup.save
    render json: @setup
  end

  def show
    render json: @setup
  end

  def update
    @setup.update(setup_params(pads_attributes: [
        :id,
        :key_name,
        :gain,
        oscillators_attributes: [
            :id,
            :frequency,
            :wave_type,
            :gain
        ]
    ]))


    render json: @setup
  end

  def destroy
    @setup.destroy
    render json: {message: 'Setup was deleted'}
  end

  private

  def find_setup
    @setup = Setup.find(params[:id])
  end

  def setup_params(*args)
    params.require(:setup).permit(*args)
  end
end
