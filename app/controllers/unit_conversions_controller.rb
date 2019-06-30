class UnitConversionsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin
  before_action :set_unit_conversion, only: [:edit, :update, :destroy]

  def new
    @unit_category = UnitCategory.find(params[:unit_category_id])
    @unit_conversion = @unit_category.unit_conversions.new
  end

  def edit
  end

  def create
    @unit_category = UnitCategory.find(params[:unit_category_id])
    @unit_conversion = @unit_category.unit_conversions.new(unit_conversion_params)

    if @unit_conversion.save
      redirect_to @unit_category, notice: t('alert.create', model: t('activerecord.models.unit_conversion.one'))
    else
      render :new
    end
  end

  def update
    if @unit_conversion.update(unit_conversion_params)
      redirect_to @unit_category, notice: t('alert.update', model: t('activerecord.models.unit_conversion.one'))
    else
      render :edit
    end
  end

  def destroy
    if @unit_conversion.destroy
      redirect_to @unit_category, notice: t('alert.destroy', model: t('activerecord.models.unit_conversion.one'))
    else
      redirect_to @unit_category, alert: @unit_conversion.errors[:destroy].to_sentence
    end
  end

  private

  def set_unit_conversion
    @unit_category = UnitCategory.find(params[:unit_category_id])
    @unit_conversion = @unit_category.unit_conversions.find(params[:id])
  end

  def unit_conversion_params
    params.require(:unit_conversion).permit(:rate, :unit_id)
  end
end
