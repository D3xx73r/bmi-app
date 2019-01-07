class BmiCalculationsController < ApplicationController
  def index
    @bmi_calculations = current_user.bmi_calculations
  end

  def new
    @bmi_calculation = BmiCalculation.new
  end

  def create
    bmi_calculation = current_user.bmi_calculations.build(permitted_params)

    if bmi_calculation.save
      redirect_to bmi_calculations_path, notice: 'Your record was created successfully'
    else
      redirect_to bmi_calculations_path, alert: 'There was a problem with your request'
    end
  end

  private

  def permitted_params
    params.require(:bmi_calculation).permit(:height, :weight)
  end
end
