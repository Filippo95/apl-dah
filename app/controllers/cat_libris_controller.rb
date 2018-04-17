class CatLibrisController < ApplicationController
  before_action :set_cat_libri, only: [:show, :edit, :update, :destroy]

  # GET /cat_libris
  # GET /cat_libris.json
  def index
    @cat_libris = CatLibri.all
  end

  # GET /cat_libris/1
  # GET /cat_libris/1.json
  def show
  end

  # GET /cat_libris/new
  def new
    @cat_libri = CatLibri.new
  end

  # GET /cat_libris/1/edit
  def edit
  end

  # POST /cat_libris
  # POST /cat_libris.json
  def create
    @cat_libri = CatLibri.new(cat_libri_params)

    respond_to do |format|
      if @cat_libri.save
        format.html { redirect_to @cat_libri, notice: 'Cat libri was successfully created.' }
        format.json { render :show, status: :created, location: @cat_libri }
      else
        format.html { render :new }
        format.json { render json: @cat_libri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_libris/1
  # PATCH/PUT /cat_libris/1.json
  def update
    respond_to do |format|
      if @cat_libri.update(cat_libri_params)
        format.html { redirect_to @cat_libri, notice: 'Cat libri was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_libri }
      else
        format.html { render :edit }
        format.json { render json: @cat_libri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_libris/1
  # DELETE /cat_libris/1.json
  def destroy
    @cat_libri.destroy
    respond_to do |format|
      format.html { redirect_to cat_libris_url, notice: 'Cat libri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_libri
      @cat_libri = CatLibri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_libri_params
      params.require(:cat_libri).permit(:nome, :descrizione)
    end
end
