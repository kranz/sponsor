class TipiContributoController < ApplicationController
  # GET /tipi_contributo
  # GET /tipi_contributo.json
  def index
    @tipi_contributo = TipoContributo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipi_contributo }
    end
  end

  # GET /tipi_contributo/1
  # GET /tipi_contributo/1.json
  def show
    @tipo_contributo = TipoContributo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_contributo }
    end
  end

  # GET /tipi_contributo/new
  # GET /tipi_contributo/new.json
  def new
    @tipo_contributo = TipoContributo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_contributo }
    end
  end

  # GET /tipi_contributo/1/edit
  def edit
    @tipo_contributo = TipoContributo.find(params[:id])
  end

  # POST /tipi_contributo
  # POST /tipi_contributo.json
  def create
    @tipo_contributo = TipoContributo.new(params[:tipo_contributo])

    respond_to do |format|
      if @tipo_contributo.save
        format.html { redirect_to @tipo_contributo, notice: 'Tipo contributo was successfully created.' }
        format.json { render json: @tipo_contributo, status: :created, location: @tipo_contributo }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_contributo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipi_contributo/1
  # PUT /tipi_contributo/1.json
  def update
    @tipo_contributo = TipoContributo.find(params[:id])

    respond_to do |format|
      if @tipo_contributo.update_attributes(params[:tipo_contributo])
        format.html { redirect_to @tipo_contributo, notice: 'Tipo contributo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_contributo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipi_contributo/1
  # DELETE /tipi_contributo/1.json
  def destroy
    @tipo_contributo = TipoContributo.find(params[:id])
    @tipo_contributo.destroy

    respond_to do |format|
      format.html { redirect_to tipi_contributo_url }
      format.json { head :no_content }
    end
  end
end
