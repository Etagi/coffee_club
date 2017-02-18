class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.create(payment_params.merge(user_id: current_user.id))
    redirect_to payments_path
  end

  def index
    @payments = Payment.all
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def destroy
    Payment.find(params[:id]).destroy
    redirect_to payments_path
  end

  private
  
  def payment_params
    params.require(:payment).permit(:from_user_id, :money, :description)
  end
end
