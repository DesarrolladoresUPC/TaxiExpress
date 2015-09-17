class VehiculoRegistrosController < ApplicationController
  before_action :set_vehiculo_registro, only: [:show, :edit, :update, :destroy]

  # GET /vehiculo_registros
  # GET /vehiculo_registros.json
  def index
    @vehiculo_registros = VehiculoRegistro.all
  end

  # GET /vehiculo_registros/1
  # GET /vehiculo_registros/1.json
  def show
  end

  # GET /vehiculo_registros/new
  def new
    @vehiculo_registro = VehiculoRegistro.new
  end

  # GET /vehiculo_registros/1/edit
  def edit
  end

  # POST /vehiculo_registros
  # POST /vehiculo_registros.json
  def create
    @vehiculo_registro = VehiculoRegistro.new(vehiculo_registro_params)

    respond_to do |format|
      if @vehiculo_registro.save
        format.html { redirect_to @vehiculo_registro, notice: 'Vehiculo registro was successfully created.' }
        format.json { render :show, status: :created, location: @vehiculo_registro }
      else
        format.html { render :new }
        format.json { render json: @vehiculo_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehiculo_registros/1
  # PATCH/PUT /vehiculo_registros/1.json
  def update
    respond_to do |format|
      if @vehiculo_registro.update(vehiculo_registro_params)
        format.html { redirect_to @vehiculo_registro, notice: 'Vehiculo registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehiculo_registro }
      else
        format.html { render :edit }
        format.json { render json: @vehiculo_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehiculo_registros/1
  # DELETE /vehiculo_registros/1.json
  def destroy
    @vehiculo_registro.destroy
    respond_to do |format|
      format.html { redirect_to vehiculo_registros_url, notice: 'Vehiculo registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehiculo_registro
      @vehiculo_registro = VehiculoRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehiculo_registro_params
      params.require(:vehiculo_registro).permit(:placa, :marca, :modelo, :color, :categoria)
    end
end
