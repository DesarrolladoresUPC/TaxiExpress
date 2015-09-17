class FeedbackRegistrosController < ApplicationController
  before_action :set_feedback_registro, only: [:show, :edit, :update, :destroy]

  # GET /feedback_registros
  # GET /feedback_registros.json
  def index
    @feedback_registros = FeedbackRegistro.all
  end

  # GET /feedback_registros/1
  # GET /feedback_registros/1.json
  def show
  end

  # GET /feedback_registros/new
  def new
    @feedback_registro = FeedbackRegistro.new
  end

  # GET /feedback_registros/1/edit
  def edit
  end

  # POST /feedback_registros
  # POST /feedback_registros.json
  def create
    @feedback_registro = FeedbackRegistro.new(feedback_registro_params)

    respond_to do |format|
      if @feedback_registro.save
        format.html { redirect_to @feedback_registro, notice: 'Feedback registro was successfully created.' }
        format.json { render :show, status: :created, location: @feedback_registro }
      else
        format.html { render :new }
        format.json { render json: @feedback_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feedback_registros/1
  # PATCH/PUT /feedback_registros/1.json
  def update
    respond_to do |format|
      if @feedback_registro.update(feedback_registro_params)
        format.html { redirect_to @feedback_registro, notice: 'Feedback registro was successfully updated.' }
        format.json { render :show, status: :ok, location: @feedback_registro }
      else
        format.html { render :edit }
        format.json { render json: @feedback_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedback_registros/1
  # DELETE /feedback_registros/1.json
  def destroy
    @feedback_registro.destroy
    respond_to do |format|
      format.html { redirect_to feedback_registros_url, notice: 'Feedback registro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feedback_registro
      @feedback_registro = FeedbackRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def feedback_registro_params
      params.require(:feedback_registro).permit(:calificacion, :comentario, :distrito)
    end
end
