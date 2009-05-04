class AttachedFilesController < ApplicationController
  before_filter :load_service, :only => [ :index, :new, :create ]

  def index
    @attached_files = @service.attached_files.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @attached_files }
    end
  end

  def show
    @attached_file = AttachedFile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @attached_file }
    end
  end

  def new
    @attached_file = @service.attached_files.build(params[:attached_file]) 

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @attached_file }
    end
  end

  def edit
    @attached_file = AttachedFile.find(params[:id])
  end

  def create
    @attached_file = @service.attached_files.build(params[:attached_file])
    @attached_file.user_id = current_user.id
    
    respond_to do |format|
      if @attached_file.save 
        flash[:notice] = 'Attachment was successfully created.'
        format.html { redirect_to([@service, @attached_file]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @attached_files.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @attached_file = AttachedFile.find(params[:id])

    respond_to do |format|
      if @attached_file.update_attributes(params[:attached_file])
        flash[:notice] = 'Attachment was successfully updated.'
        format.html { redirect_to(@attached_file) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @attached_files.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @attached_file = AttachedFile.find(params[:id])
    @attached_file.destroy

    respond_to do |format|
      format.html { redirect_to(services_path) }
      format.xml  { head :ok }
    end
  end

  private
    def load_service
      @service = Service.find(params[:service_id])
    end
end
