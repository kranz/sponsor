class RegioniController < ApplicationController
  # GET /regioni
  # GET /regioni.json
  def index
    @regioni = Regione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @regioni }
    end
  end

  # GET /regioni/1
  # GET /regioni/1.json
  def show
    @regione = Regione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @regione }
    end
  end

  # GET /regioni/new
  # GET /regioni/new.json
  def new
    @regione = Regione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @regione }
    end
  end

  # GET /regioni/1/edit
  def edit
    @regione = Regione.find(params[:id])
  end

  # POST /regioni
  # POST /regioni.json
  def create
    @regione = Regione.new(params[:regione])

    respond_to do |format|
      if @regione.save
        format.html { redirect_to new_regione_url, notice: 'Regione was successfully created.' }
        format.json { render json: @regione, status: :created, location: @regione }
      else
        format.html { render action: "new" }
        format.json { render json: @regione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regioni/1
  # PUT /regioni/1.json
  def update
    @regione = Regione.find(params[:id])

    respond_to do |format|
      if @regione.update_attributes(params[:regione])
        format.html { redirect_to @regione, notice: 'Regione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @regione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regioni/1
  # DELETE /regioni/1.json
  def destroy
    @regione = Regione.find(params[:id])
    @regione.destroy

    respond_to do |format|
      format.html { redirect_to regioni_url }
      format.json { head :no_content }
    end
  end
end
