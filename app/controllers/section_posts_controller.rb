class SectionPostsController < ApplicationController
  # GET /section_posts
  # GET /section_posts.xml
  def index
    @section_posts = SectionPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @section_posts }
    end
  end

  # GET /section_posts/1
  # GET /section_posts/1.xml
  def show
    @section_post = SectionPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @section_post }
    end
  end

  # GET /section_posts/new
  # GET /section_posts/new.xml
  def new
    @section_post = SectionPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @section_post }
    end
  end

  # GET /section_posts/1/edit
  def edit
    @section_post = SectionPost.find(params[:id])
  end

  # POST /section_posts
  # POST /section_posts.xml
  def create
    @section_post = SectionPost.new(params[:section_post])

    respond_to do |format|
      if @section_post.save
        format.html { redirect_to(@section_post, :notice => 'Section post was successfully created.') }
        format.xml  { render :xml => @section_post, :status => :created, :location => @section_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @section_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /section_posts/1
  # PUT /section_posts/1.xml
  def update
    @section_post = SectionPost.find(params[:id])

    respond_to do |format|
      if @section_post.update_attributes(params[:section_post])
        format.html { redirect_to(@section_post, :notice => 'Section post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @section_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /section_posts/1
  # DELETE /section_posts/1.xml
  def destroy
    @section_post = SectionPost.find(params[:id])
    @section_post.destroy

    respond_to do |format|
      format.html { redirect_to(section_posts_url) }
      format.xml  { head :ok }
    end
  end
end
