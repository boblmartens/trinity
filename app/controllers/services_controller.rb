class ServicesController < ApplicationController
  before_filter :require_user

  def index
    @services = Service.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @services }
    end
  end

  def show
    @service = Service.find(params[:id])
    @attachments = @service.attached_files
    @service_times = @service.service_times

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service }
    end
  end

  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service }
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def create
    @service = Service.new(params[:service])
    @service.user_id = current_user.id

    respond_to do |format|
      if @service.save
        flash[:notice] = 'Service was successfully created.'
        format.html { redirect_to(@service) }
        format.xml  { render :xml => @service, :status => :created, :location => @service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @service = Service.find(params[:id])
    @service.user_id = current_user.id

    respond_to do |format|
      if @service.update_attributes(params[:service])
        flash[:notice] = 'Service was successfully updated.'
        format.html { redirect_to(@service) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to(services_url) }
      format.xml  { head :ok }
    end
  end
end
