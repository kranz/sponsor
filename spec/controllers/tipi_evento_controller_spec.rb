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

describe TipiEventoController do

  # This should return the minimal set of attributes required to create a valid
  # TipoEvento. As you add validations to TipoEvento, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "descrizione" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TipiEventoController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tipi_evento as @tipi_evento" do
      tipo_evento = TipoEvento.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tipi_evento).should eq([tipo_evento])
    end
  end

  describe "GET show" do
    it "assigns the requested tipo_evento as @tipo_evento" do
      tipo_evento = TipoEvento.create! valid_attributes
      get :show, {:id => tipo_evento.to_param}, valid_session
      assigns(:tipo_evento).should eq(tipo_evento)
    end
  end

  describe "GET new" do
    it "assigns a new tipo_evento as @tipo_evento" do
      get :new, {}, valid_session
      assigns(:tipo_evento).should be_a_new(TipoEvento)
    end
  end

  describe "GET edit" do
    it "assigns the requested tipo_evento as @tipo_evento" do
      tipo_evento = TipoEvento.create! valid_attributes
      get :edit, {:id => tipo_evento.to_param}, valid_session
      assigns(:tipo_evento).should eq(tipo_evento)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TipoEvento" do
        expect {
          post :create, {:tipo_evento => valid_attributes}, valid_session
        }.to change(TipoEvento, :count).by(1)
      end

      it "assigns a newly created tipo_evento as @tipo_evento" do
        post :create, {:tipo_evento => valid_attributes}, valid_session
        assigns(:tipo_evento).should be_a(TipoEvento)
        assigns(:tipo_evento).should be_persisted
      end

      it "redirects to the created tipo_evento" do
        post :create, {:tipo_evento => valid_attributes}, valid_session
        response.should redirect_to(TipoEvento.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tipo_evento as @tipo_evento" do
        # Trigger the behavior that occurs when invalid params are submitted
        TipoEvento.any_instance.stub(:save).and_return(false)
        post :create, {:tipo_evento => { "descrizione" => "invalid value" }}, valid_session
        assigns(:tipo_evento).should be_a_new(TipoEvento)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TipoEvento.any_instance.stub(:save).and_return(false)
        post :create, {:tipo_evento => { "descrizione" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tipo_evento" do
        tipo_evento = TipoEvento.create! valid_attributes
        # Assuming there are no other tipi_evento in the database, this
        # specifies that the TipoEvento created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TipoEvento.any_instance.should_receive(:update_attributes).with({ "descrizione" => "MyString" })
        put :update, {:id => tipo_evento.to_param, :tipo_evento => { "descrizione" => "MyString" }}, valid_session
      end

      it "assigns the requested tipo_evento as @tipo_evento" do
        tipo_evento = TipoEvento.create! valid_attributes
        put :update, {:id => tipo_evento.to_param, :tipo_evento => valid_attributes}, valid_session
        assigns(:tipo_evento).should eq(tipo_evento)
      end

      it "redirects to the tipo_evento" do
        tipo_evento = TipoEvento.create! valid_attributes
        put :update, {:id => tipo_evento.to_param, :tipo_evento => valid_attributes}, valid_session
        response.should redirect_to(tipo_evento)
      end
    end

    describe "with invalid params" do
      it "assigns the tipo_evento as @tipo_evento" do
        tipo_evento = TipoEvento.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TipoEvento.any_instance.stub(:save).and_return(false)
        put :update, {:id => tipo_evento.to_param, :tipo_evento => { "descrizione" => "invalid value" }}, valid_session
        assigns(:tipo_evento).should eq(tipo_evento)
      end

      it "re-renders the 'edit' template" do
        tipo_evento = TipoEvento.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TipoEvento.any_instance.stub(:save).and_return(false)
        put :update, {:id => tipo_evento.to_param, :tipo_evento => { "descrizione" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tipo_evento" do
      tipo_evento = TipoEvento.create! valid_attributes
      expect {
        delete :destroy, {:id => tipo_evento.to_param}, valid_session
      }.to change(TipoEvento, :count).by(-1)
    end

    it "redirects to the tipi_evento list" do
      tipo_evento = TipoEvento.create! valid_attributes
      delete :destroy, {:id => tipo_evento.to_param}, valid_session
      response.should redirect_to(tipi_evento_url)
    end
  end

end
