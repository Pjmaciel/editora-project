class Api::V1::AssembliesController < ApplicationController
  before_action :set_assembly, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def create
    assembly = Assembly.new(assembly_params)
    render_assembly_response(assembly.save, assembly)
  end

  def update
    render_assembly_response(@assembly.update(assembly_params), @assembly)
  end

  def index
    render json: Assembly.all, status: :ok
  end

  def show
    render json: @assembly
  end

  def destroy
    render_assembly_response(@assembly.destroy, @assembly)
  end
  
  private

  def set_assembly
    @assembly = Assembly.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Montagem não encontrada' }, status: :not_found
  end

  def assembly_params
    params.require(:assembly).permit(:name, :book_id, part_ids: [])
  end

  def render_assembly_response(success, assembly = nil)
    if success
      part_id_name_hash = Part.joins(:assemblies).where(assemblies: { id: assembly.id }).pluck(:id, :name).to_h
      render json: { message: 'Operação realizada com sucesso', assembly: assembly.as_json.merge(parts_names:  part_id_name_hash) }, status: :ok
    else
      render json: { errors: assembly&.errors&.full_messages || ['A operação falhou'] }, status: :unprocessable_entity
    end
  end





end
