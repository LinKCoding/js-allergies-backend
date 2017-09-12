class Api::V1::AllergyController < ApplicationController
  def index
    @allergies = Allergy.all
    render json: @allergies, status: 200
  end

  def create
    @allergy = Allergy.create(allergy_params)
    render json: @allergy, status: 201
  end

  private
  def allergy_params
    params.permit(:body)
  end
end
