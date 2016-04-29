class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.create(payment_params)
  end

  def index
    @payments = Payment.all
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def destroy
    @payment = Payment.find(params[:id])
  end

  def payment_params
    params.require(:payment).permit(:from_user_id, :money)
  end
end
