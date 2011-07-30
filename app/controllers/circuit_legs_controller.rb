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
    load_auxiliary_data
    @circuit = Circuit.find(params[:circuit_id])
    @circuit_leg = @circuit.circuit_legs.find(params[:id])
  end

  def update
    @circuit = Circuit.find(params[:circuit_id])
    @circuit_leg = CircuitLeg.find(params[:id])
    if @circuit_leg.update_attributes(params[:circuit_leg])
      flash[:notice] = "Successfully updated leg."
      redirect_to circuit_url(@circuit_leg.circuit_id)
    else
      render :action => 'edit'
    end
  end

  private 
  def load_auxiliary_data
    @links = Link.all
  end
end
