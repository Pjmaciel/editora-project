class Api::V1::AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def create
    author = Author.new(author_params)
    render_author_response(author.save, author)
  end

  def update
    render_author_response(@author.update(author_params))
  end

  def index
    render json: Author.all, status: :ok
  end

  def show
    render json: @author
  end

  def destroy
    render_author_response(@author.destroy)
  end

  private

  def set_author
    @author = Author.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Author not found' }, status: :not_found
  end

  def author_params
    params.require(:author).permit(:name, :CPF)
  end

  def render_author_response(success, author = nil)
    if success
      render json: { message: 'Operaçao realizada com sucesso', author: author }, status: :ok
    else
      render json: { errors: author&.errors&.full_messages || ['Operation failed'] }, status: :unprocessable_entity
    end
  end
end
