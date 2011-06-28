class CostsController < ApplicationController
  before_filter :initialize_form, :only=>[:new,:create,:edit,:update]
  
  # GET /costs
  # GET /costs.xml
  # u=<user_id>
  # yy=<yyyy>
  # mm=<mm>
  # dd=<dd>
  def index
    @costs = Cost.order "costs.started_at"
    if params[:dd] && params[:mm] && params[:yy]
      @costs = Cost.where(["costs.started_at >= ? and costs.started_at < ?",
          DateTime.new(params[:yy].to_i, params[:mm].to_i, params[:dd].to_i  , 0, 0, 0),
          DateTime.new(params[:yy].to_i, params[:mm].to_i, params[:dd].to_i + 1, 0, 0, 0)])
    elsif params[:mm] && params[:yy]
      @costs = Cost.where(["costs.started_at >= ? and costs.started_at < ?",
          DateTime.new(params[:yy].to_i, params[:mm].to_i    , 1, 0, 0, 0),
          DateTime.new(params[:yy].to_i, params[:mm].to_i + 1, 1, 0, 0, 0)])
    elsif params[:yy]
      @costs = Cost.where(["costs.started_at >= ? and costs.started_at < ?",
          DateTime.new(params[:yy].to_i    , 1, 1, 0, 0, 0),
          DateTime.new(params[:yy].to_i + 1, 1, 1, 0, 0, 0)])
    end
    
    if params[:u]
      @costs = @costs.where(["costs.user_id = ?", params[:u].to_i])
    end

    puts @costs
    
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @costs }
    end
  end

  # GET /costs/1
  # GET /costs/1.xml
  def show
    @cost = Cost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cost }
    end
  end

  # GET /costs/new
  # GET /costs/new.xml
  def new
    @cost = Cost.new()

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cost }
    end
  end

  # GET /costs/1/edit
  def edit
    @cost = Cost.find(params[:id])
  end

  # POST /costs
  # POST /costs.xml
  def create
    @cost = Cost.new(params[:cost])

    respond_to do |format|
      if @cost.save
        format.html { redirect_to(@cost, :notice => 'Cost was successfully created.') }
        format.xml  { render :xml => @cost, :status => :created, :location => @cost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /costs/1
  # PUT /costs/1.xml
  def update
    @cost = Cost.find(params[:id])

    respond_to do |format|
      if @cost.update_attributes(params[:cost])
        format.html { redirect_to(@cost, :notice => 'Cost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /costs/1
  # DELETE /costs/1.xml
  def destroy
    @cost = Cost.find(params[:id])
    @cost.destroy

    respond_to do |format|
      format.html { redirect_to(costs_url) }
      format.xml  { head :ok }
    end
  end

  private

  def initialize_form
    @users = User.all.find
    @projects = Project.all.find
    @activities = Activity.order "activities.project_id"
    if params[:p]
      @activities = @activities.where ["activities.project_id = ?", params[:p].to_i]
    end
  end
end
