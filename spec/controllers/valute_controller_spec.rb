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

describe ValuteController do

  # This should return the minimal set of attributes required to create a valid
  # Valuta. As you add validations to Valuta, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "sigla" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ValuteController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all valute as @valute" do
      valuta = Valuta.create! valid_attributes
      get :index, {}, valid_session
      assigns(:valute).should eq([valuta])
    end
  end

  describe "GET show" do
    it "assigns the requested valuta as @valuta" do
      valuta = Valuta.create! valid_attributes
      get :show, {:id => valuta.to_param}, valid_session
      assigns(:valuta).should eq(valuta)
    end
  end

  describe "GET new" do
    it "assigns a new valuta as @valuta" do
      get :new, {}, valid_session
      assigns(:valuta).should be_a_new(Valuta)
    end
  end

  describe "GET edit" do
    it "assigns the requested valuta as @valuta" do
      valuta = Valuta.create! valid_attributes
      get :edit, {:id => valuta.to_param}, valid_session
      assigns(:valuta).should eq(valuta)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Valuta" do
        expect {
          post :create, {:valuta => valid_attributes}, valid_session
        }.to change(Valuta, :count).by(1)
      end

      it "assigns a newly created valuta as @valuta" do
        post :create, {:valuta => valid_attributes}, valid_session
        assigns(:valuta).should be_a(Valuta)
        assigns(:valuta).should be_persisted
      end

      it "redirects to the created valuta" do
        post :create, {:valuta => valid_attributes}, valid_session
        response.should redirect_to(Valuta.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved valuta as @valuta" do
        # Trigger the behavior that occurs when invalid params are submitted
        Valuta.any_instance.stub(:save).and_return(false)
        post :create, {:valuta => { "sigla" => "invalid value" }}, valid_session
        assigns(:valuta).should be_a_new(Valuta)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Valuta.any_instance.stub(:save).and_return(false)
        post :create, {:valuta => { "sigla" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested valuta" do
        valuta = Valuta.create! valid_attributes
        # Assuming there are no other valute in the database, this
        # specifies that the Valuta created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Valuta.any_instance.should_receive(:update_attributes).with({ "sigla" => "MyString" })
        put :update, {:id => valuta.to_param, :valuta => { "sigla" => "MyString" }}, valid_session
      end

      it "assigns the requested valuta as @valuta" do
        valuta = Valuta.create! valid_attributes
        put :update, {:id => valuta.to_param, :valuta => valid_attributes}, valid_session
        assigns(:valuta).should eq(valuta)
      end

      it "redirects to the valuta" do
        valuta = Valuta.create! valid_attributes
        put :update, {:id => valuta.to_param, :valuta => valid_attributes}, valid_session
        response.should redirect_to(valuta)
      end
    end

    describe "with invalid params" do
      it "assigns the valuta as @valuta" do
        valuta = Valuta.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Valuta.any_instance.stub(:save).and_return(false)
        put :update, {:id => valuta.to_param, :valuta => { "sigla" => "invalid value" }}, valid_session
        assigns(:valuta).should eq(valuta)
      end

      it "re-renders the 'edit' template" do
        valuta = Valuta.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Valuta.any_instance.stub(:save).and_return(false)
        put :update, {:id => valuta.to_param, :valuta => { "sigla" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested valuta" do
      valuta = Valuta.create! valid_attributes
      expect {
        delete :destroy, {:id => valuta.to_param}, valid_session
      }.to change(Valuta, :count).by(-1)
    end

    it "redirects to the valute list" do
      valuta = Valuta.create! valid_attributes
      delete :destroy, {:id => valuta.to_param}, valid_session
      response.should redirect_to(valute_url)
    end
  end

end
