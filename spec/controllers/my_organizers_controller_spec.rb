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

describe MyOrganizersController do

  # This should return the minimal set of attributes required to create a valid
  # MyOrganizer. As you add validations to MyOrganizer, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all my_organizers as @my_organizers" do
      my_organizer = MyOrganizer.create! valid_attributes
      get :index
      assigns(:my_organizers).should eq([my_organizer])
    end
  end

  describe "GET show" do
    it "assigns the requested my_organizer as @my_organizer" do
      my_organizer = MyOrganizer.create! valid_attributes
      get :show, :id => my_organizer.id.to_s
      assigns(:my_organizer).should eq(my_organizer)
    end
  end

  describe "GET new" do
    it "assigns a new my_organizer as @my_organizer" do
      get :new
      assigns(:my_organizer).should be_a_new(MyOrganizer)
    end
  end

  describe "GET edit" do
    it "assigns the requested my_organizer as @my_organizer" do
      my_organizer = MyOrganizer.create! valid_attributes
      get :edit, :id => my_organizer.id.to_s
      assigns(:my_organizer).should eq(my_organizer)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new MyOrganizer" do
        expect {
          post :create, :my_organizer => valid_attributes
        }.to change(MyOrganizer, :count).by(1)
      end

      it "assigns a newly created my_organizer as @my_organizer" do
        post :create, :my_organizer => valid_attributes
        assigns(:my_organizer).should be_a(MyOrganizer)
        assigns(:my_organizer).should be_persisted
      end

      it "redirects to the created my_organizer" do
        post :create, :my_organizer => valid_attributes
        response.should redirect_to(MyOrganizer.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved my_organizer as @my_organizer" do
        # Trigger the behavior that occurs when invalid params are submitted
        MyOrganizer.any_instance.stub(:save).and_return(false)
        post :create, :my_organizer => {}
        assigns(:my_organizer).should be_a_new(MyOrganizer)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        MyOrganizer.any_instance.stub(:save).and_return(false)
        post :create, :my_organizer => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested my_organizer" do
        my_organizer = MyOrganizer.create! valid_attributes
        # Assuming there are no other my_organizers in the database, this
        # specifies that the MyOrganizer created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        MyOrganizer.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => my_organizer.id, :my_organizer => {'these' => 'params'}
      end

      it "assigns the requested my_organizer as @my_organizer" do
        my_organizer = MyOrganizer.create! valid_attributes
        put :update, :id => my_organizer.id, :my_organizer => valid_attributes
        assigns(:my_organizer).should eq(my_organizer)
      end

      it "redirects to the my_organizer" do
        my_organizer = MyOrganizer.create! valid_attributes
        put :update, :id => my_organizer.id, :my_organizer => valid_attributes
        response.should redirect_to(my_organizer)
      end
    end

    describe "with invalid params" do
      it "assigns the my_organizer as @my_organizer" do
        my_organizer = MyOrganizer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MyOrganizer.any_instance.stub(:save).and_return(false)
        put :update, :id => my_organizer.id.to_s, :my_organizer => {}
        assigns(:my_organizer).should eq(my_organizer)
      end

      it "re-renders the 'edit' template" do
        my_organizer = MyOrganizer.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        MyOrganizer.any_instance.stub(:save).and_return(false)
        put :update, :id => my_organizer.id.to_s, :my_organizer => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested my_organizer" do
      my_organizer = MyOrganizer.create! valid_attributes
      expect {
        delete :destroy, :id => my_organizer.id.to_s
      }.to change(MyOrganizer, :count).by(-1)
    end

    it "redirects to the my_organizers list" do
      my_organizer = MyOrganizer.create! valid_attributes
      delete :destroy, :id => my_organizer.id.to_s
      response.should redirect_to(my_organizers_url)
    end
  end

end
