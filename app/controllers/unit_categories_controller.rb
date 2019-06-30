class UnitCategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin
  before_action :set_unit_category, only: [:edit, :update, :destroy]

  def index
    @unit_categories = UnitCategory.order(:name)
  end

  def show
    @unit_category = UnitCategory.includes(unit_conversions: [:unit]).find(params[:id])
  end

  def new
    @unit_category = UnitCategory.new
  end

  def edit
  end

  def create
    @unit_category = UnitCategory.new(unit_category_params)

    if @unit_category.save
      redirect_to @unit_category, notice: t('alert.create', model: t('activerecord.models.unit_category.one'))
    else
      render :new
    end
  end

  def update
    if @unit_category.update(unit_category_params)
      redirect_to @unit_category, notice: t('alert.update', model: t('activerecord.models.unit_category.one'))
    else
      render :edit
    end
  end

  def destroy
    if @unit_category.destroy
      redirect_to unit_categories_url, notice: t('alert.destroy', model: t('activerecord.models.unit_category.one'))
    else
      redirect_to @unit_category, alert: t('alert.destroy_fail', model: t('activerecord.models.unit_category.one'))
    end
  end

  private

  def set_unit_category
    @unit_category = UnitCategory.find(params[:id])
  end

  def unit_category_params
    params.require(:unit_category).permit(:name)
  end
end
