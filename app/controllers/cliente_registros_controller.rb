class ClienteRegistrosController < ApplicationController
  before_action :set_cliente_registro, only: [:show, :edit, :update, :destroy]

  # GET /cliente_registros
  # GET /cliente_registros.json
  def index
    @cliente_registros = ClienteRegistro.all
  end

  # GET /cliente_registros/1
  # GET /cliente_registros/1.json
  def show
  end

  # GET /cliente_registros/new
  def new
    @cliente_registro = ClienteRegistro.new
  end

  # GET /cliente_registros/1/edit
  def edit
  end

  # POST /cliente_registros
  # POST /cliente_registros.json
  def create
    @cliente_registro = ClienteRegistro.new(cliente_registro_params)

    respond_to do |format|
      if @cliente_registro.save
        format.html { redirect_to @cliente_registro, notice: 'Cliente registro was successfully created.' }
        format.json { render :show, status: :created, location: @cliente_registro }
      else
        format.html { render :new }
        format.json { render json: @cliente_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cliente_registros/1
  # PATCH/PUT /cliente_registros/1.json
  def update
    respond_to do |format|
      if @cliente_registro.update(cliente_registro_params)
        format.html { redirect_to @cliente_registro, notice: 'Cliente registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente_registro }
      else
        format.html { render :edit }
        format.json { render json: @cliente_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cliente_registros/1
  # DELETE /cliente_registros/1.json
  def destroy
    @cliente_registro.destroy
    respond_to do |format|
      format.html { redirect_to cliente_registros_url, notice: 'Cliente registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente_registro
      @cliente_registro = ClienteRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_registro_params
      params.require(:cliente_registro).permit(:nombre, :telefono, :apellido, :correo, :contrasena)
    end
end
