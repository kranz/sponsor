class ProvinceController < ApplicationController
  # GET /province
  # GET /province.json
  def index
    @province = Provincia.order("nome ASC").all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @province }
    end
  end

  # GET /province/1
  # GET /province/1.json
  def show
    @provincia = Provincia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @provincia }
    end
  end

  # GET /province/new
  # GET /province/new.json
  def new
    @provincia = Provincia.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @provincia }
    end
  end

  # GET /province/1/edit
  def edit
    @provincia = Provincia.find(params[:id])
  end

  # POST /province
  # POST /province.json
  def create
    @provincia = Provincia.new(params[:provincia])

    respond_to do |format|
      if @provincia.save
        format.html { redirect_to @provincia, notice: 'Provincia was successfully created.' }
        format.json { render json: @provincia, status: :created, location: @provincia }
      else
        format.html { render action: "new" }
        format.json { render json: @provincia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /province/1
  # PUT /province/1.json
  def update
    @provincia = Provincia.find(params[:id])

    respond_to do |format|
      if @provincia.update_attributes(params[:provincia])
        format.html { redirect_to @provincia, notice: 'Provincia was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @provincia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /province/1
  # DELETE /province/1.json
  def destroy
    @provincia = Provincia.find(params[:id])
    @provincia.destroy

    respond_to do |format|
      format.html { redirect_to province_url }
      format.json { head :no_content }
    end
  end
end
