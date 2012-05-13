class CbusController < ApplicationController
  # GET /cbus
  # GET /cbus.xml
  def index
  #  @cbus = Cbu.all
  #  @cbus = Cbu.find(:all, :order => :route_number)
     @cbus = Cbu.paginate :page => params[:page], :order => 'route_number', :per_page => 20
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cbus }
    end
  end

  # GET /cbus/1
  # GET /cbus/1.xml
  def show
    @cbu = Cbu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cbu }
      format.json { render :json=> @cbu }
    end
  end
  
  def map
#    @cbus = Cbu.all(:limit=>20, :offset=>70)
    @cbus = Cbu.all
    respond_to do |format|
      format.html
    end
  end

  # GET /cbus/new
  # GET /cbus/new.xml
  def new
    @cbu = Cbu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cbu }
    end
  end

  # GET /cbus/1/edit
  def edit
    @cbu = Cbu.find(params[:id])
  end

  # POST /cbus
  # POST /cbus.xml
  def create
    @cbu = Cbu.new(params[:cbu])

    respond_to do |format|
      if @cbu.save
        flash[:notice] = 'Cbu was successfully created.'
        format.html { redirect_to(@cbu) }
        format.xml  { render :xml => @cbu, :status => :created, :location => @cbu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cbu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cbus/1
  # PUT /cbus/1.xml
  def update
    @cbu = Cbu.find(params[:id])

    respond_to do |format|
      if @cbu.update_attributes(params[:cbu])
        flash[:notice] = 'Cbu was successfully updated.'
        format.html { redirect_to(@cbu) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cbu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cbus/1
  # DELETE /cbus/1.xml
  def destroy
    @cbu = Cbu.find(params[:id])
    @cbu.destroy

    respond_to do |format|
      format.html { redirect_to(cbus_url) }
      format.xml  { head :ok }
    end
  end

# Headfirst page 174
  def find
     @cbus = Cbu.find(:all,
     :conditions=>["route_number = ? OR address = ?",
     params[:search_string], params[:search_string]])
  end
end

  def cbu_list
    @cbus = Cbu.paginate :page => params[:page]
  end
