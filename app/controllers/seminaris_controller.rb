class SeminarisController < ApplicationController
  before_action :set_seminari, only: [:show, :edit, :update, :destroy]
 skip_before_action :authenticate_user!, only: [:getattached]
  # GET /seminaris
  # GET /seminaris.json
  def index
    @seminaris = Seminari.all
  end

  # GET /seminaris/1
  # GET /seminaris/1.json
  def show
  end

  # GET /seminaris/new
  def new
    @seminari = Seminari.new
  end
  def getattached
    @seminari = Seminari.find(params[:id])
  
   respond_to do |format|
 
    format.html { render :text => @seminari.image.url.html_safe}
  end
  end

  # GET /seminaris/1/edit
  def edit
  end

  # POST /seminaris
  # POST /seminaris.json
  def create
    @seminari = Seminari.new(seminari_params)

    respond_to do |format|
      if @seminari.save
        format.html { redirect_to @seminari, notice: 'Il seminario è stato inserito con successo.' }
        format.json { render :show, status: :created, location: @seminari }
      else
        format.html { render :new }
        format.json { render json: @seminari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seminaris/1
  # PATCH/PUT /seminaris/1.json
  def update
    respond_to do |format|
      if @seminari.update(seminari_params)
        format.html { redirect_to @seminari, notice: 'Il seminario è stato modificato con successo.' }
        format.json { render :show, status: :ok, location: @seminari }
      else
        format.html { render :edit }
        format.json { render json: @seminari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seminaris/1
  # DELETE /seminaris/1.json
  def destroy
    @seminari.destroy
    respond_to do |format|
      format.html { redirect_to seminaris_url, notice: 'Il seminario è stato eliminato con successo.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seminari
      @seminari = Seminari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seminari_params
      params.require(:seminari).permit(:da, :al, :luogo, :nazione, :titolo, :descrizione,:image)
    end
end
