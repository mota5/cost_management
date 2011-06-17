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

describe ProjectUsersController do

  # This should return the minimal set of attributes required to create a valid
  # ProjectUser. As you add validations to ProjectUser, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all project_users as @project_users" do
      project_user = ProjectUser.create! valid_attributes
      get :index
      assigns(:project_users).should eq([project_user])
    end
  end

  describe "GET show" do
    it "assigns the requested project_user as @project_user" do
      project_user = ProjectUser.create! valid_attributes
      get :show, :id => project_user.id.to_s
      assigns(:project_user).should eq(project_user)
    end
  end

  describe "GET new" do
    it "assigns a new project_user as @project_user" do
      get :new
      assigns(:project_user).should be_a_new(ProjectUser)
    end
  end

  describe "GET edit" do
    it "assigns the requested project_user as @project_user" do
      project_user = ProjectUser.create! valid_attributes
      get :edit, :id => project_user.id.to_s
      assigns(:project_user).should eq(project_user)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ProjectUser" do
        expect {
          post :create, :project_user => valid_attributes
        }.to change(ProjectUser, :count).by(1)
      end

      it "assigns a newly created project_user as @project_user" do
        post :create, :project_user => valid_attributes
        assigns(:project_user).should be_a(ProjectUser)
        assigns(:project_user).should be_persisted
      end

      it "redirects to the created project_user" do
        post :create, :project_user => valid_attributes
        response.should redirect_to(ProjectUser.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved project_user as @project_user" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectUser.any_instance.stub(:save).and_return(false)
        post :create, :project_user => {}
        assigns(:project_user).should be_a_new(ProjectUser)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectUser.any_instance.stub(:save).and_return(false)
        post :create, :project_user => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested project_user" do
        project_user = ProjectUser.create! valid_attributes
        # Assuming there are no other project_users in the database, this
        # specifies that the ProjectUser created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ProjectUser.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => project_user.id, :project_user => {'these' => 'params'}
      end

      it "assigns the requested project_user as @project_user" do
        project_user = ProjectUser.create! valid_attributes
        put :update, :id => project_user.id, :project_user => valid_attributes
        assigns(:project_user).should eq(project_user)
      end

      it "redirects to the project_user" do
        project_user = ProjectUser.create! valid_attributes
        put :update, :id => project_user.id, :project_user => valid_attributes
        response.should redirect_to(project_user)
      end
    end

    describe "with invalid params" do
      it "assigns the project_user as @project_user" do
        project_user = ProjectUser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectUser.any_instance.stub(:save).and_return(false)
        put :update, :id => project_user.id.to_s, :project_user => {}
        assigns(:project_user).should eq(project_user)
      end

      it "re-renders the 'edit' template" do
        project_user = ProjectUser.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProjectUser.any_instance.stub(:save).and_return(false)
        put :update, :id => project_user.id.to_s, :project_user => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested project_user" do
      project_user = ProjectUser.create! valid_attributes
      expect {
        delete :destroy, :id => project_user.id.to_s
      }.to change(ProjectUser, :count).by(-1)
    end

    it "redirects to the project_users list" do
      project_user = ProjectUser.create! valid_attributes
      delete :destroy, :id => project_user.id.to_s
      response.should redirect_to(project_users_url)
    end
  end

end
