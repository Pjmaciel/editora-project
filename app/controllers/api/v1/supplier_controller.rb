class Api::V1::SupplierController < ApplicationController
  before_action :set_supplier, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def create
    supplier = Supplier.new(supplier_params)
    render_supplier_response(supplier.save, supplier)
  end

  def update
    render_supplier_response(@supplier.update(supplier_params))
  end

  def index
    render json: Supplier.all, status: :ok
  end

  def show
    render json: @supplier
  end

  def destroy
    render_supplier_response(@supplier.destroy)
  end

  private

  def supplier_params
    params.require(:supplier).permit(:name, :cnpj)
  end

  def render_supplier_response(success, supplier = nil)
    if success
      render json: { message: ' Operação realizada com sucesso', supplier: supplier}, status: :ok
    else
      render json: { errors: supplier&.errors&.full_messages || [ 'A Operaçao falhou']}, status: :unprocessable_entity
    end
  end

end
