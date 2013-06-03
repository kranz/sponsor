class ValuteController < ApplicationController
  # GET /valute
  # GET /valute.json
  def index
    @valute = Valuta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @valute }
    end
  end

  # GET /valute/1
  # GET /valute/1.json
  def show
    @valuta = Valuta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @valuta }
    end
  end

  # GET /valute/new
  # GET /valute/new.json
  def new
    @valuta = Valuta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @valuta }
    end
  end

  # GET /valute/1/edit
  def edit
    @valuta = Valuta.find(params[:id])
  end

  # POST /valute
  # POST /valute.json
  def create
    @valuta = Valuta.new(params[:valuta])

    respond_to do |format|
      if @valuta.save
        format.html { redirect_to @valuta, notice: 'Valuta was successfully created.' }
        format.json { render json: @valuta, status: :created, location: @valuta }
      else
        format.html { render action: "new" }
        format.json { render json: @valuta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /valute/1
  # PUT /valute/1.json
  def update
    @valuta = Valuta.find(params[:id])

    respond_to do |format|
      if @valuta.update_attributes(params[:valuta])
        format.html { redirect_to @valuta, notice: 'Valuta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @valuta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valute/1
  # DELETE /valute/1.json
  def destroy
    @valuta = Valuta.find(params[:id])
    @valuta.destroy

    respond_to do |format|
      format.html { redirect_to valute_url }
      format.json { head :no_content }
    end
  end
end
