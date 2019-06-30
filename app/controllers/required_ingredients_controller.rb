class RequiredIngredientsController < ApplicationController
  before_action :set_required_ingredient, only: [:edit, :update, :destroy]

  def new
    @recipe = Recipe.find(params[:recipe_id])
  end

  def edit
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @required_ingredient = @recipe.required_ingredients.new(required_ingredient_params)

    if @required_ingredient.save
      redirect_to @recipe, notice: t('alert.create', model: t('activerecord.models.required_ingredient.one'))
    else
      render :new
    end
  end

  def update
    if @required_ingredient.update(required_ingredient_params)
      redirect_to @recipe, notice: t('alert.update', model: t('activerecord.models.required_ingredient.one'))
    else
      render :edit
    end
  end

  def destroy
    @required_ingredient.destroy
    redirect_to @recipe, notice: t('alert.destroy', model: t('activerecord.models.required_ingredient.one'))
  end

  private

  def set_required_ingredient
    @recipe = Recipe.find(params[:recipe_id])
    @required_ingredient = @recipe.required_ingredients.find(params[:id])
  end

  def required_ingredient_params
    params.require(:required_ingredient).permit(:amount, :ingredient_id, :recipe_id)
  end
end
