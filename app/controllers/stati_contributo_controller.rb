class StatiContributoController < ApplicationController
  # GET /stati_contributo
  # GET /stati_contributo.json
  def index
    @stati_contributo = StatoContributo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stati_contributo }
    end
  end

  # GET /stati_contributo/1
  # GET /stati_contributo/1.json
  def show
    @stato_contributo = StatoContributo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stato_contributo }
    end
  end

  # GET /stati_contributo/new
  # GET /stati_contributo/new.json
  def new
    @stato_contributo = StatoContributo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stato_contributo }
    end
  end

  # GET /stati_contributo/1/edit
  def edit
    @stato_contributo = StatoContributo.find(params[:id])
  end

  # POST /stati_contributo
  # POST /stati_contributo.json
  def create
    @stato_contributo = StatoContributo.new(params[:stato_contributo])

    respond_to do |format|
      if @stato_contributo.save
        format.html { redirect_to @stato_contributo, notice: 'Stato contributo was successfully created.' }
        format.json { render json: @stato_contributo, status: :created, location: @stato_contributo }
      else
        format.html { render action: "new" }
        format.json { render json: @stato_contributo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stati_contributo/1
  # PUT /stati_contributo/1.json
  def update
    @stato_contributo = StatoContributo.find(params[:id])

    respond_to do |format|
      if @stato_contributo.update_attributes(params[:stato_contributo])
        format.html { redirect_to @stato_contributo, notice: 'Stato contributo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stato_contributo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stati_contributo/1
  # DELETE /stati_contributo/1.json
  def destroy
    @stato_contributo = StatoContributo.find(params[:id])
    @stato_contributo.destroy

    respond_to do |format|
      format.html { redirect_to stati_contributo_url }
      format.json { head :no_content }
    end
  end
end
