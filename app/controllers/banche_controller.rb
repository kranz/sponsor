class BancheController < ApplicationController
  # GET /banche
  # GET /banche.json
  def index
    @banche = Banca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @banche }
    end
  end

  # GET /banche/1
  # GET /banche/1.json
  def show
    @banca = Banca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @banca }
    end
  end

  # GET /banche/new
  # GET /banche/new.json
  def new
    @banca = Banca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @banca }
    end
  end

  # GET /banche/1/edit
  def edit
    @banca = Banca.find(params[:id])
  end

  # POST /banche
  # POST /banche.json
  def create
    @banca = Banca.new(params[:banca])

    respond_to do |format|
      if @banca.save
        format.html { redirect_to @banca, notice: 'Banca was successfully created.' }
        format.json { render json: @banca, status: :created, location: @banca }
      else
        format.html { render action: "new" }
        format.json { render json: @banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /banche/1
  # PUT /banche/1.json
  def update
    @banca = Banca.find(params[:id])

    respond_to do |format|
      if @banca.update_attributes(params[:banca])
        format.html { redirect_to @banca, notice: 'Banca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @banca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banche/1
  # DELETE /banche/1.json
  def destroy
    @banca = Banca.find(params[:id])
    @banca.destroy

    respond_to do |format|
      format.html { redirect_to banche_url }
      format.json { head :no_content }
    end
  end
end
