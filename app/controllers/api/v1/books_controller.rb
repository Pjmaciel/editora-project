class Api::V1::BooksController < ApplicationController
  before_action :set_book, only: [:show, :update, :destroy]
  skip_before_action :verify_authenticity_token

  def create
    book = Book.new(book_params)
    render_book_response(book.save, book)
  end

  def update
    render_book_response(@book.update(book_params))
  end

  def index
    render json: Book.all, status: :ok
  end

  def show
    render json: @book
  end

  def destroy
    render_book_response(@book.destroy)
  end

  private

  def book_params
    params.require(:book).permit(:title, :ISBN, :author_id)
  end

  def render_book_response(success, book = nil)
    if success
      render json: { message: 'Operaçao realizada com sucesso', book: book}, status: ok
    else
      render json: { errors: book&.errors&.full_messages || [' A Operação falhou']}, status: :unprocessable_entity
    end
  end

end
