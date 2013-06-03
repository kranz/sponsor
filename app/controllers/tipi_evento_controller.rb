class TipiEventoController < ApplicationController
  # GET /tipi_evento
  # GET /tipi_evento.json
  def index
    @tipi_evento = TipoEvento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipi_evento }
    end
  end

  # GET /tipi_evento/1
  # GET /tipi_evento/1.json
  def show
    @tipo_evento = TipoEvento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_evento }
    end
  end

  # GET /tipi_evento/new
  # GET /tipi_evento/new.json
  def new
    @tipo_evento = TipoEvento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_evento }
    end
  end

  # GET /tipi_evento/1/edit
  def edit
    @tipo_evento = TipoEvento.find(params[:id])
  end

  # POST /tipi_evento
  # POST /tipi_evento.json
  def create
    @tipo_evento = TipoEvento.new(params[:tipo_evento])

    respond_to do |format|
      if @tipo_evento.save
        format.html { redirect_to @tipo_evento, notice: 'Tipo evento was successfully created.' }
        format.json { render json: @tipo_evento, status: :created, location: @tipo_evento }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipi_evento/1
  # PUT /tipi_evento/1.json
  def update
    @tipo_evento = TipoEvento.find(params[:id])

    respond_to do |format|
      if @tipo_evento.update_attributes(params[:tipo_evento])
        format.html { redirect_to @tipo_evento, notice: 'Tipo evento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipi_evento/1
  # DELETE /tipi_evento/1.json
  def destroy
    @tipo_evento = TipoEvento.find(params[:id])
    @tipo_evento.destroy

    respond_to do |format|
      format.html { redirect_to tipi_evento_url }
      format.json { head :no_content }
    end
  end
end
