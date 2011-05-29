class ProjectPlantCategoriesController < ApplicationController
  # GET /project_plant_categories
  # GET /project_plant_categories.xml
  def index
    @project_plant_categories = ProjectPlantCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_plant_categories }
    end
  end

  # GET /project_plant_categories/1
  # GET /project_plant_categories/1.xml
  def show
    @project_plant_category = ProjectPlantCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_plant_category }
    end
  end

  # GET /project_plant_categories/new
  # GET /project_plant_categories/new.xml
  def new
    @project_plant_category = ProjectPlantCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_plant_category }
    end
  end

  # GET /project_plant_categories/1/edit
  def edit
    @project_plant_category = ProjectPlantCategory.find(params[:id])
  end

  # POST /project_plant_categories
  # POST /project_plant_categories.xml
  def create
    @project_plant_category = ProjectPlantCategory.new(params[:project_plant_category])

    respond_to do |format|
      if @project_plant_category.save
        format.html { redirect_to(@project_plant_category, :notice => 'Project plant category was successfully created.') }
        format.xml  { render :xml => @project_plant_category, :status => :created, :location => @project_plant_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_plant_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_plant_categories/1
  # PUT /project_plant_categories/1.xml
  def update
    @project_plant_category = ProjectPlantCategory.find(params[:id])

    respond_to do |format|
      if @project_plant_category.update_attributes(params[:project_plant_category])
        format.html { redirect_to(@project_plant_category, :notice => 'Project plant category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_plant_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_plant_categories/1
  # DELETE /project_plant_categories/1.xml
  def destroy
    @project_plant_category = ProjectPlantCategory.find(params[:id])
    @project_plant_category.destroy

    respond_to do |format|
      format.html { redirect_to(project_plant_categories_url) }
      format.xml  { head :ok }
    end
  end
end
