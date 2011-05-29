class PlantCategoriesController < ApplicationController
  # GET /plant_categories
  # GET /plant_categories.xml
  def index
    @plant_categories = PlantCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @plant_categories }
    end
  end

  # GET /plant_categories/1
  # GET /plant_categories/1.xml
  def show
    @plant_category = PlantCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @plant_category }
    end
  end

  # GET /plant_categories/new
  # GET /plant_categories/new.xml
  def new
    @plant_category = PlantCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @plant_category }
    end
  end

  # GET /plant_categories/1/edit
  def edit
    @plant_category = PlantCategory.find(params[:id])
  end

  # POST /plant_categories
  # POST /plant_categories.xml
  def create
    @plant_category = PlantCategory.new(params[:plant_category])

    respond_to do |format|
      if @plant_category.save
        format.html { redirect_to(@plant_category, :notice => 'Plant category was successfully created.') }
        format.xml  { render :xml => @plant_category, :status => :created, :location => @plant_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @plant_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /plant_categories/1
  # PUT /plant_categories/1.xml
  def update
    @plant_category = PlantCategory.find(params[:id])

    respond_to do |format|
      if @plant_category.update_attributes(params[:plant_category])
        format.html { redirect_to(@plant_category, :notice => 'Plant category was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @plant_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_categories/1
  # DELETE /plant_categories/1.xml
  def destroy
    @plant_category = PlantCategory.find(params[:id])
    @plant_category.destroy

    respond_to do |format|
      format.html { redirect_to(plant_categories_url) }
      format.xml  { head :ok }
    end
  end
end
