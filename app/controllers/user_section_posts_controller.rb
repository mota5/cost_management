class UserSectionPostsController < ApplicationController
  # GET /user_section_posts
  # GET /user_section_posts.xml
  def index
    @user_section_posts = UserSectionPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @user_section_posts }
    end
  end

  # GET /user_section_posts/1
  # GET /user_section_posts/1.xml
  def show
    @user_section_post = UserSectionPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user_section_post }
    end
  end

  # GET /user_section_posts/new
  # GET /user_section_posts/new.xml
  def new
    @user_section_post = UserSectionPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user_section_post }
    end
  end

  # GET /user_section_posts/1/edit
  def edit
    @user_section_post = UserSectionPost.find(params[:id])
  end

  # POST /user_section_posts
  # POST /user_section_posts.xml
  def create
    @user_section_post = UserSectionPost.new(params[:user_section_post])

    respond_to do |format|
      if @user_section_post.save
        format.html { redirect_to(@user_section_post, :notice => 'User section post was successfully created.') }
        format.xml  { render :xml => @user_section_post, :status => :created, :location => @user_section_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user_section_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_section_posts/1
  # PUT /user_section_posts/1.xml
  def update
    @user_section_post = UserSectionPost.find(params[:id])

    respond_to do |format|
      if @user_section_post.update_attributes(params[:user_section_post])
        format.html { redirect_to(@user_section_post, :notice => 'User section post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user_section_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_section_posts/1
  # DELETE /user_section_posts/1.xml
  def destroy
    @user_section_post = UserSectionPost.find(params[:id])
    @user_section_post.destroy

    respond_to do |format|
      format.html { redirect_to(user_section_posts_url) }
      format.xml  { head :ok }
    end
  end
end
