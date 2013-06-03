class AreeTerritorialiController < ApplicationController
  # GET /aree_territoriali
  # GET /aree_territoriali.json
  def index
    @aree_territoriali = AreaTerritoriale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @aree_territoriali }
    end
  end

  # GET /aree_territoriali/1
  # GET /aree_territoriali/1.json
  def show
    @area_territoriale = AreaTerritoriale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @area_territoriale }
    end
  end

  # GET /aree_territoriali/new
  # GET /aree_territoriali/new.json
  def new
    @area_territoriale = AreaTerritoriale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @area_territoriale }
    end
  end

  # GET /aree_territoriali/1/edit
  def edit
    @area_territoriale = AreaTerritoriale.find(params[:id])
  end

  # POST /aree_territoriali
  # POST /aree_territoriali.json
  def create
    @area_territoriale = AreaTerritoriale.new(params[:area_territoriale])

    respond_to do |format|
      if @area_territoriale.save
        format.html { redirect_to @area_territoriale, notice: 'Area territoriale was successfully created.' }
        format.json { render json: @area_territoriale, status: :created, location: @area_territoriale }
      else
        format.html { render action: "new" }
        format.json { render json: @area_territoriale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /aree_territoriali/1
  # PUT /aree_territoriali/1.json
  def update
    @area_territoriale = AreaTerritoriale.find(params[:id])

    respond_to do |format|
      if @area_territoriale.update_attributes(params[:area_territoriale])
        format.html { redirect_to @area_territoriale, notice: 'Area territoriale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @area_territoriale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aree_territoriali/1
  # DELETE /aree_territoriali/1.json
  def destroy
    @area_territoriale = AreaTerritoriale.find(params[:id])
    @area_territoriale.destroy

    respond_to do |format|
      format.html { redirect_to aree_territoriali_url }
      format.json { head :no_content }
    end
  end
end
