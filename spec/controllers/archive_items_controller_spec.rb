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

describe ArchiveItemsController do

  # This should return the minimal set of attributes required to create a valid
  # ArchiveItem. As you add validations to ArchiveItem, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "archive_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ArchiveItemsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all archive_items as @archive_items" do
      archive_item = ArchiveItem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:archive_items).should eq([archive_item])
    end
  end

  describe "GET show" do
    it "assigns the requested archive_item as @archive_item" do
      archive_item = ArchiveItem.create! valid_attributes
      get :show, {:id => archive_item.to_param}, valid_session
      assigns(:archive_item).should eq(archive_item)
    end
  end

  describe "GET new" do
    it "assigns a new archive_item as @archive_item" do
      get :new, {}, valid_session
      assigns(:archive_item).should be_a_new(ArchiveItem)
    end
  end

  describe "GET edit" do
    it "assigns the requested archive_item as @archive_item" do
      archive_item = ArchiveItem.create! valid_attributes
      get :edit, {:id => archive_item.to_param}, valid_session
      assigns(:archive_item).should eq(archive_item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ArchiveItem" do
        expect {
          post :create, {:archive_item => valid_attributes}, valid_session
        }.to change(ArchiveItem, :count).by(1)
      end

      it "assigns a newly created archive_item as @archive_item" do
        post :create, {:archive_item => valid_attributes}, valid_session
        assigns(:archive_item).should be_a(ArchiveItem)
        assigns(:archive_item).should be_persisted
      end

      it "redirects to the created archive_item" do
        post :create, {:archive_item => valid_attributes}, valid_session
        response.should redirect_to(ArchiveItem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved archive_item as @archive_item" do
        # Trigger the behavior that occurs when invalid params are submitted
        ArchiveItem.any_instance.stub(:save).and_return(false)
        post :create, {:archive_item => { "archive_id" => "invalid value" }}, valid_session
        assigns(:archive_item).should be_a_new(ArchiveItem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ArchiveItem.any_instance.stub(:save).and_return(false)
        post :create, {:archive_item => { "archive_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested archive_item" do
        archive_item = ArchiveItem.create! valid_attributes
        # Assuming there are no other archive_items in the database, this
        # specifies that the ArchiveItem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ArchiveItem.any_instance.should_receive(:update_attributes).with({ "archive_id" => "1" })
        put :update, {:id => archive_item.to_param, :archive_item => { "archive_id" => "1" }}, valid_session
      end

      it "assigns the requested archive_item as @archive_item" do
        archive_item = ArchiveItem.create! valid_attributes
        put :update, {:id => archive_item.to_param, :archive_item => valid_attributes}, valid_session
        assigns(:archive_item).should eq(archive_item)
      end

      it "redirects to the archive_item" do
        archive_item = ArchiveItem.create! valid_attributes
        put :update, {:id => archive_item.to_param, :archive_item => valid_attributes}, valid_session
        response.should redirect_to(archive_item)
      end
    end

    describe "with invalid params" do
      it "assigns the archive_item as @archive_item" do
        archive_item = ArchiveItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ArchiveItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => archive_item.to_param, :archive_item => { "archive_id" => "invalid value" }}, valid_session
        assigns(:archive_item).should eq(archive_item)
      end

      it "re-renders the 'edit' template" do
        archive_item = ArchiveItem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ArchiveItem.any_instance.stub(:save).and_return(false)
        put :update, {:id => archive_item.to_param, :archive_item => { "archive_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested archive_item" do
      archive_item = ArchiveItem.create! valid_attributes
      expect {
        delete :destroy, {:id => archive_item.to_param}, valid_session
      }.to change(ArchiveItem, :count).by(-1)
    end

    it "redirects to the archive_items list" do
      archive_item = ArchiveItem.create! valid_attributes
      delete :destroy, {:id => archive_item.to_param}, valid_session
      response.should redirect_to(archive_items_url)
    end
  end

end
