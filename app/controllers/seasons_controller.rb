class SeasonsController < ApplicationController
  def index
    @seasons = Season.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seasons }
    end
  end

  def new
    @season = Season.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @season }
    end
  end

  def edit
    @season = Season.find(params[:id])
  end

  def create
    @season = Season.new(params[:season])

    respond_to do |format|
      if @season.save
        flash[:notice] = 'Season was successfully created.'
        format.html { redirect_to seasons_path }
        format.xml  { render :xml => @season, :status => :created, :location => @season }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @season.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @season = Season.find(params[:id])

    respond_to do |format|
      if @season.update_attributes(params[:season])
        flash[:notice] = 'Season was successfully updated.'
        format.html { redirect_to seasons_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @season.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @season = Season.find(params[:id])
    @season.destroy

    respond_to do |format|
      format.html { redirect_to(seasons_url) }
      format.xml  { head :ok }
    end
  end
end
