class ConductorRegistrosController < ApplicationController
  before_action :set_conductor_registro, only: [:show, :edit, :update, :destroy]

  # GET /conductor_registros
  # GET /conductor_registros.json
  def index
    @conductor_registros = ConductorRegistro.all
  end

  # GET /conductor_registros/1
  # GET /conductor_registros/1.json
  def show
  end

  # GET /conductor_registros/new
  def new
    @conductor_registro = ConductorRegistro.new
  end

  # GET /conductor_registros/1/edit
  def edit
  end

  # POST /conductor_registros
  # POST /conductor_registros.json
  def create
    @conductor_registro = ConductorRegistro.new(conductor_registro_params)

    respond_to do |format|
      if @conductor_registro.save
        format.html { redirect_to @conductor_registro, notice: 'Conductor registro was successfully created.' }
        format.json { render :show, status: :created, location: @conductor_registro }
      else
        format.html { render :new }
        format.json { render json: @conductor_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conductor_registros/1
  # PATCH/PUT /conductor_registros/1.json
  def update
    respond_to do |format|
      if @conductor_registro.update(conductor_registro_params)
        format.html { redirect_to @conductor_registro, notice: 'Conductor registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @conductor_registro }
      else
        format.html { render :edit }
        format.json { render json: @conductor_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conductor_registros/1
  # DELETE /conductor_registros/1.json
  def destroy
    @conductor_registro.destroy
    respond_to do |format|
      format.html { redirect_to conductor_registros_url, notice: 'Conductor registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conductor_registro
      @conductor_registro = ConductorRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conductor_registro_params
      params.require(:conductor_registro).permit(:nombre, :telefono, :apellido, :correo, :contraseña, :codigo)
    end
end
