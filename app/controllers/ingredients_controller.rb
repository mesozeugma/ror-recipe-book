class IngredientsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :require_admin, except: [:index, :show]
  before_action :set_ingredient, only: [:edit, :update, :destroy]

  def index
    @ingredients = Ingredient.includes(unit_conversion: [:unit, :unit_category]).order(:name)
  end

  def show
    @ingredient = Ingredient.includes(unit_conversion: [:unit, :unit_category], recipes: [:user]).find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to @ingredient, notice: t('alert.create', model: t('activerecord.models.ingredient.one'))
    else
      render :new
    end
  end

  def update
    if @ingredient.update(ingredient_params)
      redirect_to @ingredient, notice: t('alert.update', model: t('activerecord.models.ingredient.one'))
    else
      render :edit
    end
  end

  def destroy
    if @ingredient.destroy
      redirect_to ingredients_url, notice: t('alert.destroy', model: t('activerecord.models.ingredient.one'))
    else
      redirect_to @ingredient, alert: t('alert.destroy_fail', model: t('activerecord.models.ingredient.one'))
    end
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :unit_conversion_id)
  end
end
