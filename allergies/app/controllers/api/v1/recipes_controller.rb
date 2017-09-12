class Api::V1::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes, status: 200
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe, status: 201
  end

  private
  def recipe_params
    params.permit(:body)
  end
end
