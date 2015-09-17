class MetodoPagoRegistrosController < ApplicationController
  before_action :set_metodo_pago_registro, only: [:show, :edit, :update, :destroy]

  # GET /metodo_pago_registros
  # GET /metodo_pago_registros.json
  def index
    @metodo_pago_registros = MetodoPagoRegistro.all
  end

  # GET /metodo_pago_registros/1
  # GET /metodo_pago_registros/1.json
  def show
  end

  # GET /metodo_pago_registros/new
  def new
    @metodo_pago_registro = MetodoPagoRegistro.new
  end

  # GET /metodo_pago_registros/1/edit
  def edit
  end

  # POST /metodo_pago_registros
  # POST /metodo_pago_registros.json
  def create
    @metodo_pago_registro = MetodoPagoRegistro.new(metodo_pago_registro_params)

    respond_to do |format|
      if @metodo_pago_registro.save
        format.html { redirect_to @metodo_pago_registro, notice: 'Metodo pago registro was successfully created.' }
        format.json { render :show, status: :created, location: @metodo_pago_registro }
      else
        format.html { render :new }
        format.json { render json: @metodo_pago_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metodo_pago_registros/1
  # PATCH/PUT /metodo_pago_registros/1.json
  def update
    respond_to do |format|
      if @metodo_pago_registro.update(metodo_pago_registro_params)
        format.html { redirect_to @metodo_pago_registro, notice: 'Metodo pago registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @metodo_pago_registro }
      else
        format.html { render :edit }
        format.json { render json: @metodo_pago_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metodo_pago_registros/1
  # DELETE /metodo_pago_registros/1.json
  def destroy
    @metodo_pago_registro.destroy
    respond_to do |format|
      format.html { redirect_to metodo_pago_registros_url, notice: 'Metodo pago registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metodo_pago_registro
      @metodo_pago_registro = MetodoPagoRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metodo_pago_registro_params
      params.require(:metodo_pago_registro).permit(:codigo, :nombre)
    end
end
