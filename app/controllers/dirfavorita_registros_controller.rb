class DirfavoritaRegistrosController < ApplicationController
  before_action :set_dirfavorita_registro, only: [:show, :edit, :update, :destroy]

  # GET /dirfavorita_registros
  # GET /dirfavorita_registros.json
  def index
    @dirfavorita_registros = DirfavoritaRegistro.all
  end

  # GET /dirfavorita_registros/1
  # GET /dirfavorita_registros/1.json
  def show
  end

  # GET /dirfavorita_registros/new
  def new
    @dirfavorita_registro = DirfavoritaRegistro.new
  end

  # GET /dirfavorita_registros/1/edit
  def edit
  end

  # POST /dirfavorita_registros
  # POST /dirfavorita_registros.json
  def create
    @dirfavorita_registro = DirfavoritaRegistro.new(dirfavorita_registro_params)

    respond_to do |format|
      if @dirfavorita_registro.save
        format.html { redirect_to @dirfavorita_registro, notice: 'Dirfavorita registro was successfully created.' }
        format.json { render :show, status: :created, location: @dirfavorita_registro }
      else
        format.html { render :new }
        format.json { render json: @dirfavorita_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dirfavorita_registros/1
  # PATCH/PUT /dirfavorita_registros/1.json
  def update
    respond_to do |format|
      if @dirfavorita_registro.update(dirfavorita_registro_params)
        format.html { redirect_to @dirfavorita_registro, notice: 'Dirfavorita registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @dirfavorita_registro }
      else
        format.html { render :edit }
        format.json { render json: @dirfavorita_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dirfavorita_registros/1
  # DELETE /dirfavorita_registros/1.json
  def destroy
    @dirfavorita_registro.destroy
    respond_to do |format|
      format.html { redirect_to dirfavorita_registros_url, notice: 'Dirfavorita registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dirfavorita_registro
      @dirfavorita_registro = DirfavoritaRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dirfavorita_registro_params
      params.require(:dirfavorita_registro).permit(:nombre, :dirfavorita, :distrito)
    end
end
