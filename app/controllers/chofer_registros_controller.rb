class ChoferRegistrosController < ApplicationController
  before_action :set_chofer_registro, only: [:show, :edit, :update, :destroy]

  # GET /chofer_registros
  # GET /chofer_registros.json
  def index
    @chofer_registros = ChoferRegistro.all
  end

  # GET /chofer_registros/1
  # GET /chofer_registros/1.json
  def show
  end

  # GET /chofer_registros/new
  def new
    @chofer_registro = ChoferRegistro.new
  end

  # GET /chofer_registros/1/edit
  def edit
  end

  # POST /chofer_registros
  # POST /chofer_registros.json
  def create
    @chofer_registro = ChoferRegistro.new(chofer_registro_params)

    respond_to do |format|
      if @chofer_registro.save
        format.html { redirect_to @chofer_registro, notice: 'Chofer registro was successfully created.' }
        format.json { render :show, status: :created, location: @chofer_registro }
      else
        format.html { render :new }
        format.json { render json: @chofer_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chofer_registros/1
  # PATCH/PUT /chofer_registros/1.json
  def update
    respond_to do |format|
      if @chofer_registro.update(chofer_registro_params)
        format.html { redirect_to @chofer_registro, notice: 'Chofer registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @chofer_registro }
      else
        format.html { render :edit }
        format.json { render json: @chofer_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chofer_registros/1
  # DELETE /chofer_registros/1.json
  def destroy
    @chofer_registro.destroy
    respond_to do |format|
      format.html { redirect_to chofer_registros_url, notice: 'Chofer registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chofer_registro
      @chofer_registro = ChoferRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chofer_registro_params
      params.require(:chofer_registro).permit(:codigo, :nombres, :apellidos, :telefono, :distrito, :estado, :cuenta, :placa)
    end
end
