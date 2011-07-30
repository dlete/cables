class LinkLegsController < ApplicationController

  def create
    @link = Link.find(params[:link_id])
    @link_leg = @link.link_legs.create(params[:link_leg])
    redirect_to link_path(@link)
  end

  def destroy
    @link = Link.find(params[:link_id])
    @link_leg = @link.link_legs.find(params[:id])
    @link_leg.destroy
    redirect_to link_path(@link)
  end

  def edit
    load_auxiliary_data
    @link = Link.find(params[:link_id])
    @link_leg = @link.link_legs.find(params[:id])
  end

  def update
    @link = Link.find(params[:link_id])
    @link_leg = LinkLeg.find(params[:id])
    if @link_leg.update_attributes(params[:link_leg])
      flash[:notice] = "Successfully updated leg."
      redirect_to link_url(@link_leg.link_id)
    else
      render :action => 'edit'
    end
  end



  private
  def load_auxiliary_data
    @circuits = Circuit.all
  end
end
