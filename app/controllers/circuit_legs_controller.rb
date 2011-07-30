class CircuitLegsController < ApplicationController
  def create
    @circuit = Circuit.find(params[:circuit_id])
    @circuit_leg = @circuit.circuit_legs.create(params[:circuit_leg])
    redirect_to circuit_path(@circuit)
  end
end
