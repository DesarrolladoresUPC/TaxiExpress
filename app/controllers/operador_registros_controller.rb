class OperadorRegistrosController < ApplicationController
  before_action :set_operador_registro, only: [:show, :edit, :update, :destroy]

  # GET /operador_registros
  # GET /operador_registros.json
  def index
    @operador_registros = OperadorRegistro.all
  end

  # GET /operador_registros/1
  # GET /operador_registros/1.json
  def show
  end

  # GET /operador_registros/new
  def new
    @operador_registro = OperadorRegistro.new
  end

  # GET /operador_registros/1/edit
  def edit
  end

  # POST /operador_registros
  # POST /operador_registros.json
  def create
    @operador_registro = OperadorRegistro.new(operador_registro_params)

    respond_to do |format|
      if @operador_registro.save
        format.html { redirect_to @operador_registro, notice: 'Operador registro was successfully created.' }
        format.json { render :show, status: :created, location: @operador_registro }
      else
        format.html { render :new }
        format.json { render json: @operador_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operador_registros/1
  # PATCH/PUT /operador_registros/1.json
  def update
    respond_to do |format|
      if @operador_registro.update(operador_registro_params)
        format.html { redirect_to @operador_registro, notice: 'Operador registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @operador_registro }
      else
        format.html { render :edit }
        format.json { render json: @operador_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operador_registros/1
  # DELETE /operador_registros/1.json
  def destroy
    @operador_registro.destroy
    respond_to do |format|
      format.html { redirect_to operador_registros_url, notice: 'Operador registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operador_registro
      @operador_registro = OperadorRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operador_registro_params
      params.require(:operador_registro).permit(:codigo, :nombres, :apellidos, :telefono, :cuenta)
    end
end
