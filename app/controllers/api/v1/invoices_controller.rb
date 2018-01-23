class Api::V1::InvoicesController < ApplicationController
  def index
    render json: Invoice.all
  end

  def show
    render json: Invoice.find(params[:id])
  end

  def create

    render json: Invoice.create(invoice_params)
  end

  def update
    render json: Invoice.update(params[:id], invoice_params)
  end

  def destroy

    render json: Invoice.delete(params[:id])
  end

private

  def invoice_params
    params.require(:invoice).permit(:customer_id, :status, :merchant_id)
  end
end
