class ServiceTimesController < ApplicationController
  before_filter :require_user
  before_filter :load_service

  def index
    @service_times = ServiceTime.all
  end

  def new
    @service_time = @service.service_times.build(params[:service_time])

    respond_to do |format|
      format.html
      format.xml { render :xml => @service_time }
    end
  end

  def create
    @service_time = @service.service_times.build(params[:service_time])

    respond_to do |format|
      if @service_time.save
        flash[:notice] = 'Service time was added.'
        format.html { redirect_to(service_path(@service.id)) }
        format.xml  { head :ok }
      else
        format.html { redirect_to(service_path(@service.id)) }
        format.xml  { render :xml => @attached_files.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @service_time = @service.service_times.find(params[:id])
    @service_time.destroy

    respond_to do |format|
      format.html { redirect_to(@service) }
    end
  end

  private
    def load_service
      @service = Service.find(params[:service_id])
    end
end
