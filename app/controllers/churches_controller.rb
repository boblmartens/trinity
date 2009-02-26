class ChurchesController < ApplicationController
  # GET /churches
  # GET /churches.xml
  def index
    @churches = Church.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @churches }
    end
  end

  # GET /churches/1
  # GET /churches/1.xml
  def show
    @church = Church.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @church }
    end
  end

  # GET /churches/new
  # GET /churches/new.xml
  def new
    @church = Church.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @church }
    end
  end

  # GET /churches/1/edit
  def edit
    @church = Church.find(params[:id])
  end

  # POST /churches
  # POST /churches.xml
  def create
    @church = Church.new(params[:church])

    respond_to do |format|
      if @church.save
        flash[:notice] = 'Church was successfully created.'
        format.html { redirect_to(@church) }
        format.xml  { render :xml => @church, :status => :created, :location => @church }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @church.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /churches/1
  # PUT /churches/1.xml
  def update
    @church = Church.find(params[:id])

    respond_to do |format|
      if @church.update_attributes(params[:church])
        flash[:notice] = 'Church was successfully updated.'
        format.html { redirect_to(@church) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @church.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /churches/1
  # DELETE /churches/1.xml
  def destroy
    @church = Church.find(params[:id])
    @church.destroy

    respond_to do |format|
      format.html { redirect_to(churches_url) }
      format.xml  { head :ok }
    end
  end
end
