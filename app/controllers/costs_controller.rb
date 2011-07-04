class CostsController < ApplicationController
  before_filter :initialize_common, :only=>[:index, :new, :create, :edit, :update]
  before_filter :initialize_activities, :only=>[:new, :create, :edit, :update, :activities]
  before_filter :initialize_costs, :only=>[:index, :new, :edit, :costs]
  
  # GET /costs
  # GET /costs.xml
  # u=<user_id>
  # yy=<yyyy>
  # mm=<mm>
  # dd=<dd>
  def index

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
  
  def costs
#    render :partial => "costs", :locals=>{:costs=>@costs}
  end

  def activities
    render :partial => "activities", :locals=>{:activities=>@activities, :activity_id=>nil}
  end

  private

  def initialize_common
    if params[:id]
      @cost = Cost.find(params[:id])
    else
      @cost = Cost.new
    end
    @users = User.all.find
    @projects = Project.all.find
  end
  
  def initialize_activities
    @activities = Activity.order "activities.project_id"
    if params[:p]
      @activities = @activities.where ["activities.project_id = ?", params[:p].to_i]
    end
  end

  def initialize_costs
    puts params[:action]
    
    # 複数行の更新
    if ["index", "edit", "costs"].include? params[:action]
      @costs = Cost \
          .joins("inner join activities on costs.activity_id = activities.id") \
          .joins("inner join projects on activities.project_id = projects.id") \
          .order("costs.started_at")
        
      # 日付による絞込み
      if params[:ds] && params[:ms] && params[:ys]
        @costs = @costs.where(["costs.started_at >= ?",
            DateTime.new(params[:ys].to_i, params[:ms].to_i, params[:ds].to_i  , 0, 0, 0)])
      elsif params[:ms] && params[:ys]
        @costs = @costs.where(["costs.started_at >= ?",
            DateTime.new(params[:ys].to_i, params[:ms].to_i    , 1, 0, 0, 0)])
      elsif params[:ys]
        @costs = @costs.where(["costs.started_at >= ?",
            DateTime.new(params[:ys].to_i    , 1, 1, 0, 0, 0)])
      end
      if params[:de] && params[:me] && params[:ye]
        @costs = @costs.where(["costs.started_at < ?",
            DateTime.new(params[:ye].to_i, params[:me].to_i, params[:de].to_i + 1, 0, 0, 0)])
      elsif params[:me] && params[:ye]
        @costs = @costs.where(["costs.started_at < ?",
            DateTime.new(params[:ye].to_i, params[:me].to_i + 1, 1, 0, 0, 0)])
      elsif params[:ye]
        @costs = @costs.where(["costs.started_at < ?",
              DateTime.new(params[:ye].to_i + 1, 1, 1, 0, 0, 0)])
      end
      
      # ユーザによる絞込み
      if params[:u]
        @costs = @costs.where(["costs.user_id = ?", params[:u].to_i])
      end
      
      # プロジェクトによる絞込み
      if params[:p]
        @costs = @costs.where(["activities.project_id = ?", params[:p].to_i])
      end
      
    # 複数行の新規追加
    elsif ["new"].include? params[:action]
      @costs = Array.new(5, Cost.new)
    else

    end
    
    @costs ||= []
    puts @costs
  end
  
end
#ある日特定
#      # 日付による絞込み
#      if params[:ds] && params[:ms] && params[:ys]
#        @costs = @costs.where(["costs.started_at >= ? and costs.started_at < ?",
#            DateTime.new(params[:ys].to_i, params[:ms].to_i, params[:ds].to_i  , 0, 0, 0),
#            DateTime.new(params[:ys].to_i, params[:ms].to_i, params[:ds].to_i + 1, 0, 0, 0)])
#      elsif params[:ms] && params[:ys]
#        @costs = @costs.where(["costs.started_at >= ? and costs.started_at < ?",
#            DateTime.new(params[:ys].to_i, params[:ms].to_i    , 1, 0, 0, 0),
#            DateTime.new(params[:ys].to_i, params[:ms].to_i + 1, 1, 0, 0, 0)])
#      elsif params[:ys]
#        @costs = @costs.where(["costs.started_at >= ? and costs.started_at < ?",
#            DateTime.new(params[:ys].to_i    , 1, 1, 0, 0, 0),
#            DateTime.new(params[:ys].to_i + 1, 1, 1, 0, 0, 0)])
#      end