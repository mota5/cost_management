require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProjectPlantCategoriesController do

  # This should return the minimal set of attributes required to create a valid
  # ProjectPlantCategory. As you add validations to ProjectPlantCategory, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all project_plant_categories as @project_plant_categories" do
      project_plant_category = ProjectPlantCategory.create! valid_attributes
      get :index
      assigns(:project_plant_categories).should eq([project_plant_category])
    end
  end

  describe "GET show" do
    it "assigns the requested project_plant_category as @project_plant_category" do
      project_plant_category = ProjectPlantCategory.create! valid_attributes
      get :show, :id => project_plant_category.id.to_s
      assigns(:project_plant_category).should eq(project_plant_category)
    end
  end

  describe "GET new" do
    it "assigns a new project_plant_category as @project_plant_category" do
      get :new
      assigns(:project_plant_category).should be_a_new(ProjectPlantCategory)
    end
  end

  describe "GET edit" do
    it "assigns the requested project_plant_category as @project_plant_category" do
      project_plant_category = ProjectPlantCategory.create! valid_attributes
      get :edit, :id => project_plant_category.id.to_s
      assigns(:project_plant_category).should eq(project_plant_category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ProjectPlantCategory" do
        expect {
          post :create, :project_plant_category => valid_attributes
        }.to change(ProjectPlantCategory, :count).by(1)
      end

      it "assigns a newly created project_plant_category as @project_plant_category" do
        post :create, :project_plant_category => valid_attributes
        assigns(:project_plant_category).should be_a(ProjectPlantCategory)
        assigns(:project_plant_category).should be_persisted
      end

      it "redirects to the created project_plant_category" do
        post :create, :project_plant_category => valid_attributes
        response.should redirect_to(ProjectPlantCategory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved project_plant_category as @project_plant_category" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectPlantCategory.any_instance.stub(:save).and_return(false)
        post :create, :project_plant_category => {}
        assigns(:project_plant_category).should be_a_new(ProjectPlantCategory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectPlantCategory.any_instance.stub(:save).and_return(false)
        post :create, :project_plant_category => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested project_plant_category" do
        project_plant_category = ProjectPlantCategory.create! valid_attributes
        # Assuming there are no other project_plant_categories in the database, this
        # specifies that the ProjectPlantCategory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ProjectPlantCategory.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => project_plant_category.id, :project_plant_category => {'these' => 'params'}
      end

      it "assigns the requested project_plant_category as @project_plant_category" do
        project_plant_category = ProjectPlantCategory.create! valid_attributes
        put :update, :id => project_plant_category.id, :project_plant_category => valid_attributes
        assigns(:project_plant_category).should eq(project_plant_category)
      end

      it "redirects to the project_plant_category" do
        project_plant_category = ProjectPlantCategory.create! valid_attributes
        put :update, :id => project_plant_category.id, :project_plant_category => valid_attributes
        response.should redirect_to(project_plant_category)
      end
    end

    describe "with invalid params" do
      it "assigns the project_plant_category as @project_plant_category" do
        project_plant_category = ProjectPlantCategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectPlantCategory.any_instance.stub(:save).and_return(false)
        put :update, :id => project_plant_category.id.to_s, :project_plant_category => {}
        assigns(:project_plant_category).should eq(project_plant_category)
      end

      it "re-renders the 'edit' template" do
        project_plant_category = ProjectPlantCategory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectPlantCategory.any_instance.stub(:save).and_return(false)
        put :update, :id => project_plant_category.id.to_s, :project_plant_category => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested project_plant_category" do
      project_plant_category = ProjectPlantCategory.create! valid_attributes
      expect {
        delete :destroy, :id => project_plant_category.id.to_s
      }.to change(ProjectPlantCategory, :count).by(-1)
    end

    it "redirects to the project_plant_categories list" do
      project_plant_category = ProjectPlantCategory.create! valid_attributes
      delete :destroy, :id => project_plant_category.id.to_s
      response.should redirect_to(project_plant_categories_url)
    end
  end

end
