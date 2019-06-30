class RecipesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_recipe, only: [:edit, :update, :destroy]
  before_action :require_owner, only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.includes(:user).order(:name)
  end

  def show
    @recipe = Recipe.includes(:user, required_ingredients: [:ingredient, :unit_conversion, :unit]).find(params[:id])
  end

  def new
    @recipe = current_user.recipes.new
  end

  def edit
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)

    if @recipe.save
      redirect_to @recipe, notice: t('alert.create', model: t('activerecord.models.recipe.one'))
    else
      render :new
    end
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: t('alert.update', model: t('activerecord.models.recipe.one'))
    else
      render :edit
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_url, notice: t('alert.destroy', model: t('activerecord.models.recipe.one'))
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end

  def require_owner
    if @recipe.user_id != current_user.id && !current_user.try(:admin?)
      redirect_to recipes_url, alert: t('alert.access_denied')
    end
  end
end
