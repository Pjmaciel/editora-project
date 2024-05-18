class Api::V1::PartsController < ApplicationController
  before_action :set_part, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def create
    part = Part.new(part_params)
    render_part_response(part.save, part)
  end

  def update
    render_part_response(@part.update(part_params), @part)
  end

  def index
    render json: Part.all, status: :ok
  end

  def show
    render json: @part
  end

  def destroy
    render_part_response(@part.destroy, @part)
  end

  private

  def set_part
    @part = Part.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Fornecedor não encontrado' }, status: :not_found
  end

  def part_params
    params.require(:part).permit(:name, :value, :supplier_id)
  end

  def render_part_response(success, part = nil)
    if success
      render json: { message: 'Operaçao realizada com sucesso', part: part}, status: :ok
    else
      render json: { errors: part&.errors&.full_messages || [' A Operação falhou']}, status: :unprocessable_entity
    end
  end
end
