class CircuitLegsController < ApplicationController

  def create
    @circuit = Circuit.find(params[:circuit_id])
    @circuit_leg = @circuit.circuit_legs.create(params[:circuit_leg])
    redirect_to circuit_path(@circuit)
  end

  def destroy
    @circuit = Circuit.find(params[:circuit_id])
    @circuit_leg = @circuit.circuit_legs.find(params[:id])
    @circuit_leg.destroy
    redirect_to circuit_path(@circuit)
  end

  def edit
    @circuit = Circuit.find(params[:circuit_id])
    @circuit_leg = @circuit.circuit_legs.find(params[:id])
  end

  private 
  def load_auxiliary_data
    @links = Link.all
  end
end
