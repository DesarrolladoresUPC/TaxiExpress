class TarifarioRegistrosController < ApplicationController
  before_action :set_tarifario_registro, only: [:show, :edit, :update, :destroy]

  # GET /tarifario_registros
  # GET /tarifario_registros.json
  def index
    @tarifario_registros = TarifarioRegistro.all
  end

  # GET /tarifario_registros/1
  # GET /tarifario_registros/1.json
  def show
  end

  # GET /tarifario_registros/new
  def new
    @tarifario_registro = TarifarioRegistro.new
  end

  # GET /tarifario_registros/1/edit
  def edit
  end

  # POST /tarifario_registros
  # POST /tarifario_registros.json
  def create
    @tarifario_registro = TarifarioRegistro.new(tarifario_registro_params)

    respond_to do |format|
      if @tarifario_registro.save
        format.html { redirect_to @tarifario_registro, notice: 'Tarifario registro was successfully created.' }
        format.json { render :show, status: :created, location: @tarifario_registro }
      else
        format.html { render :new }
        format.json { render json: @tarifario_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tarifario_registros/1
  # PATCH/PUT /tarifario_registros/1.json
  def update
    respond_to do |format|
      if @tarifario_registro.update(tarifario_registro_params)
        format.html { redirect_to @tarifario_registro, notice: 'Tarifario registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarifario_registro }
      else
        format.html { render :edit }
        format.json { render json: @tarifario_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tarifario_registros/1
  # DELETE /tarifario_registros/1.json
  def destroy
    @tarifario_registro.destroy
    respond_to do |format|
      format.html { redirect_to tarifario_registros_url, notice: 'Tarifario registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarifario_registro
      @tarifario_registro = TarifarioRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tarifario_registro_params
      params.require(:tarifario_registro).permit(:distrito_origen, :distrito_origen, :tarifa)
    end
end
