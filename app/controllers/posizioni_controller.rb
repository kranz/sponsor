class PosizioniController < ApplicationController
  # GET /posizioni
  # GET /posizioni.json
  def index
    @posizioni = Posizione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posizioni }
    end
  end

  # GET /posizioni/1
  # GET /posizioni/1.json
  def show
    @posizione = Posizione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @posizione }
    end
  end

  # GET /posizioni/new
  # GET /posizioni/new.json
  def new
    @posizione = Posizione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @posizione }
    end
  end

  # GET /posizioni/1/edit
  def edit
    @posizione = Posizione.find(params[:id])
  end

  # POST /posizioni
  # POST /posizioni.json
  def create
    @posizione = Posizione.new(params[:posizione])

    respond_to do |format|
      if @posizione.save
        format.html { redirect_to @posizione, notice: 'Posizione was successfully created.' }
        format.json { render json: @posizione, status: :created, location: @posizione }
      else
        format.html { render action: "new" }
        format.json { render json: @posizione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posizioni/1
  # PUT /posizioni/1.json
  def update
    @posizione = Posizione.find(params[:id])

    respond_to do |format|
      if @posizione.update_attributes(params[:posizione])
        format.html { redirect_to @posizione, notice: 'Posizione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @posizione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posizioni/1
  # DELETE /posizioni/1.json
  def destroy
    @posizione = Posizione.find(params[:id])
    @posizione.destroy

    respond_to do |format|
      format.html { redirect_to posizioni_url }
      format.json { head :no_content }
    end
  end
end
