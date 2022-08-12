class RecipesController < ApplicationController
  before_action  :validate_params
  def index
    @recipe = Recipe.all.order(created_at: :desc)
  end
  def count
    @recipe = Recipe.all.length
  end

  def create
    Recipe.create!(title: @params[:title],content: @params[:content])
  end

  def show
    
    recipe = Recipe.find_by(title: @params[:title])
    render :show

  end

  private

  def validate_params
    @params = params.permit(:title, :content)
  end

end
