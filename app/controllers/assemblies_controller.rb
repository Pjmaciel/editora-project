class AssembliesController < ApplicationController
  before_action :set_assembly, only: %i[show edit update destroy]
  before_action :get_books_and_parts, only: %i[new edit create update]

  def index
    @assemblies = Assembly.includes(:book, :parts).all
  end

  def show
  end

  def new
    @assembly = Assembly.new
  end

  def create
    @assembly = Assembly.new(assembly_params)

    respond_to do |format|
      if @assembly.save
        format.html { redirect_to @assembly, notice: "Assembly was successfully created." }
        format.json { render :show, status: :created, location: @assembly }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assembly.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @assembly.update(assembly_params)
        format.html { redirect_to @assembly, notice: "Assembly was successfully updated." }
        format.json { render :show, status: :ok, location: @assembly }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assembly.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @assembly.destroy
    respond_to do |format|
      format.html { redirect_to assemblies_url, notice: "Assembly was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def get_books_and_parts
    @books = Book.all
    @parts = Part.all
  end

  def set_assembly
    @assembly = Assembly.includes(:book, :parts).find(params[:id])
  end

  def assembly_params
    params.require(:assembly).permit(:name, :book_id, part_ids: [])
  end
end
