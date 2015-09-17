class IniciarController < ApplicationController
  before_action :set_reserva, only: [:show]  
  def standar
    @reservas = Reserva.all
  end

  def client
    @reservas = Reserva.all
  end

  def chofer
    @reservas = Reserva.all
  end
end
