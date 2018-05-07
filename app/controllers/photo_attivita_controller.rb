class PhotoAttivitaController < ApplicationController
  before_action :set_photo_attivitum, only: [:show, :edit, :update, :destroy]
 skip_before_action :authenticate_user!
  # GET /photo_attivita
  # GET /photo_attivita.json
  def index
    @photo_attivita = PhotoAttivitum.all
  end

  # GET /photo_attivita/1
  # GET /photo_attivita/1.json
  def show
  end

  # GET /photo_attivita/new
  def new
    @photo_attivitum = PhotoAttivitum.new
  end

  # GET /photo_attivita/1/edit
  def edit
  end

  # POST /photo_attivita
  # POST /photo_attivita.json
  def create
    @photo_attivitum = PhotoAttivitum.new(photo_attivitum_params)

    respond_to do |format|
      if @photo_attivitum.save
<<<<<<< HEAD

        format.html { redirect_to attivita_path, notice: 'File caricato con successo.' }
=======
        format.html { redirect_to attivita_path, notice: 'Il file è stato caricato con successo.' }
>>>>>>> 7bf2782f9a23dd53d21af48f2a94c33565cc6cfd
        format.json { render :show, status: :created, location: @photo_attivitum }
      else
        format.html { render :new }
        format.json { render json: @photo_attivitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_attivita/1
  # PATCH/PUT /photo_attivita/1.json
  def update
    respond_to do |format|
      if @photo_attivitum.update(photo_attivitum_params)
        format.html { redirect_to @photo_attivitum, notice: 'Il file è stato modificato con successo.' }
        format.json { render :show, status: :ok, location: @photo_attivitum }
      else
        format.html { render :edit }
        format.json { render json: @photo_attivitum.errors, status: :unprocessable_entity }
      end
    end
  end
  def getattached
    @photo_attivitum = PhotoAttivitum.where(id_attivita: 
   params[:id_attivita])


  render json: @photo_attivitum
  end

  # DELETE /photo_attivita/1
  # DELETE /photo_attivita/1.json
  def destroy
    @photo_attivitum.destroy
    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to attivita_path, notice: 'Photo attivitum was successfully destroyed.' }
=======
      format.html { redirect_to attivita_path, notice: 'Il file è stato eliminato con successo' }
>>>>>>> 7bf2782f9a23dd53d21af48f2a94c33565cc6cfd
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_attivitum
      @photo_attivitum = PhotoAttivitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_attivitum_params
      params.require(:photo_attivitum).permit(:id_attivita, :titolo, :image)
    end

end
