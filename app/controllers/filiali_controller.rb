class FilialiController < ApplicationController
  # GET /filiali
  # GET /filiali.json
  def index
    @filiali = Filiale.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @filiali }
    end
  end

  # GET /filiali/1
  # GET /filiali/1.json
  def show
    @filiale = Filiale.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @filiale }
    end
  end

  # GET /filiali/new
  # GET /filiali/new.json
  def new
    @filiale = Filiale.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @filiale }
    end
  end

  # GET /filiali/1/edit
  def edit
    @filiale = Filiale.find(params[:id])
  end

  # POST /filiali
  # POST /filiali.json
  def create
    @filiale = Filiale.new(params[:filiale])

    respond_to do |format|
      if @filiale.save
        format.html { redirect_to @filiale, notice: 'Filiale was successfully created.' }
        format.json { render json: @filiale, status: :created, location: @filiale }
      else
        format.html { render action: "new" }
        format.json { render json: @filiale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /filiali/1
  # PUT /filiali/1.json
  def update
    @filiale = Filiale.find(params[:id])

    respond_to do |format|
      if @filiale.update_attributes(params[:filiale])
        format.html { redirect_to @filiale, notice: 'Filiale was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @filiale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filiali/1
  # DELETE /filiali/1.json
  def destroy
    @filiale = Filiale.find(params[:id])
    @filiale.destroy

    respond_to do |format|
      format.html { redirect_to filiali_url }
      format.json { head :no_content }
    end
  end
end
