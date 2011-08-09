class CircuitsController < ApplicationController
  # GET /circuits
  # GET /circuits.xml
  def index
    load_auxiliary_data
    @circuits = Circuit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @circuits }
    end
  end

  # GET /circuits/1
  # GET /circuits/1.xml
  def show
    load_auxiliary_data
    @dependant_links = Link.joins(:link_legs).where(:link_legs => { :circuit_id => params[:id] })
    @circuit = Circuit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @circuit }
    end
  end

  # GET /circuits/new
  # GET /circuits/new.xml
  def new
    load_auxiliary_data
    @circuit = Circuit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @circuit }
    end
  end

  # GET /circuits/1/edit
  def edit
    load_auxiliary_data
    @circuit = Circuit.find(params[:id])
  end

  # POST /circuits
  # POST /circuits.xml
  def create
    @circuit = Circuit.new(params[:circuit])

    respond_to do |format|
      if @circuit.save
        format.html { redirect_to(@circuit, :notice => 'Circuit was successfully created.') }
        format.xml  { render :xml => @circuit, :status => :created, :location => @circuit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @circuit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /circuits/1
  # PUT /circuits/1.xml
  def update
    @circuit = Circuit.find(params[:id])

    respond_to do |format|
      if @circuit.update_attributes(params[:circuit])
        format.html { redirect_to(@circuit, :notice => 'Circuit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @circuit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /circuits/1
  # DELETE /circuits/1.xml
  def destroy
    @circuit = Circuit.find(params[:id])
    @circuit.destroy

    respond_to do |format|
      format.html { redirect_to(circuits_url) }
      format.xml  { head :ok }
    end
  end

  private
  def load_auxiliary_data
    @endpoints = Endpoint.find(:all, :order => "name")
    # circuit_legs que se muestran en add circuits show
    # todos aquellos links que no esten en uso en este mismo circuit (que ya
    # estén en circuit_leg) y que el multiplexer_id no se haya cogido
    @available_links = Link.includes(:circuit_legs).where("circuit_legs.link_id IS NULL OR circuit_legs.circuit_id != ?", params[:id])
    @media = Medium.find(:all, :order => "name")
    @providers = Provider.find(:all, :order => "organization_id")
    @dependant_links = Link.joins(:link_legs).where(:link_legs => { :circuit_id => 1 })
  end
end
