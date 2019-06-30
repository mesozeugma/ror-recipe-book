class UnitsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin
  before_action :set_unit, only: [:edit, :update, :destroy]

  def index
    @units = Unit.order(:name)
  end

  def show
    @unit = Unit.includes(:unit_conversions).find(params[:id])
  end

  def new
    @unit = Unit.new
  end

  def edit
  end

  def create
    @unit = Unit.new(unit_params)

    if @unit.save
      redirect_to @unit, notice: t('alert.create', model: t('activerecord.models.unit.one'))
    else
      render :new
    end
  end

  def update
    if @unit.update(unit_params)
      redirect_to @unit, notice: t('alert.update', model: t('activerecord.models.unit.one'))
    else
      render :edit
    end
  end

  def destroy
    if @unit.destroy
      redirect_to units_url, notice: t('alert.destroy', model: t('activerecord.models.unit.one'))
    else
      redirect_to @unit, alert: t('alert.destroy_fail', model: t('activerecord.models.unit.one'))
    end
  end

  private

  def set_unit
    @unit = Unit.find(params[:id])
  end

  def unit_params
    params.require(:unit).permit(:name, :symbol)
  end
end
