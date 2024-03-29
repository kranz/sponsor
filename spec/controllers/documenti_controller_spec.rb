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

describe DocumentiController do

  # This should return the minimal set of attributes required to create a valid
  # Documento. As you add validations to Documento, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "numerofattura" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DocumentiController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all documenti as @documenti" do
      documento = Documento.create! valid_attributes
      get :index, {}, valid_session
      assigns(:documenti).should eq([documento])
    end
  end

  describe "GET show" do
    it "assigns the requested documento as @documento" do
      documento = Documento.create! valid_attributes
      get :show, {:id => documento.to_param}, valid_session
      assigns(:documento).should eq(documento)
    end
  end

  describe "GET new" do
    it "assigns a new documento as @documento" do
      get :new, {}, valid_session
      assigns(:documento).should be_a_new(Documento)
    end
  end

  describe "GET edit" do
    it "assigns the requested documento as @documento" do
      documento = Documento.create! valid_attributes
      get :edit, {:id => documento.to_param}, valid_session
      assigns(:documento).should eq(documento)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Documento" do
        expect {
          post :create, {:documento => valid_attributes}, valid_session
        }.to change(Documento, :count).by(1)
      end

      it "assigns a newly created documento as @documento" do
        post :create, {:documento => valid_attributes}, valid_session
        assigns(:documento).should be_a(Documento)
        assigns(:documento).should be_persisted
      end

      it "redirects to the created documento" do
        post :create, {:documento => valid_attributes}, valid_session
        response.should redirect_to(Documento.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved documento as @documento" do
        # Trigger the behavior that occurs when invalid params are submitted
        Documento.any_instance.stub(:save).and_return(false)
        post :create, {:documento => { "numerofattura" => "invalid value" }}, valid_session
        assigns(:documento).should be_a_new(Documento)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Documento.any_instance.stub(:save).and_return(false)
        post :create, {:documento => { "numerofattura" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested documento" do
        documento = Documento.create! valid_attributes
        # Assuming there are no other documenti in the database, this
        # specifies that the Documento created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Documento.any_instance.should_receive(:update_attributes).with({ "numerofattura" => "MyString" })
        put :update, {:id => documento.to_param, :documento => { "numerofattura" => "MyString" }}, valid_session
      end

      it "assigns the requested documento as @documento" do
        documento = Documento.create! valid_attributes
        put :update, {:id => documento.to_param, :documento => valid_attributes}, valid_session
        assigns(:documento).should eq(documento)
      end

      it "redirects to the documento" do
        documento = Documento.create! valid_attributes
        put :update, {:id => documento.to_param, :documento => valid_attributes}, valid_session
        response.should redirect_to(documento)
      end
    end

    describe "with invalid params" do
      it "assigns the documento as @documento" do
        documento = Documento.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Documento.any_instance.stub(:save).and_return(false)
        put :update, {:id => documento.to_param, :documento => { "numerofattura" => "invalid value" }}, valid_session
        assigns(:documento).should eq(documento)
      end

      it "re-renders the 'edit' template" do
        documento = Documento.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Documento.any_instance.stub(:save).and_return(false)
        put :update, {:id => documento.to_param, :documento => { "numerofattura" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested documento" do
      documento = Documento.create! valid_attributes
      expect {
        delete :destroy, {:id => documento.to_param}, valid_session
      }.to change(Documento, :count).by(-1)
    end

    it "redirects to the documenti list" do
      documento = Documento.create! valid_attributes
      delete :destroy, {:id => documento.to_param}, valid_session
      response.should redirect_to(documenti_url)
    end
  end

end
