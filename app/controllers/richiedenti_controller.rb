class RichiedentiController < ApplicationController
  # GET /richiedenti
  # GET /richiedenti.json
  def index
    @richiedenti = Richiedente.search(params[:search]).order("ragionesociale ASC").paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @richiedenti }
    end
  end

  # GET /richiedenti/1
  # GET /richiedenti/1.json
  def show
    @richiedente = Richiedente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @richiedente }
    end
  end

  # GET /richiedenti/new
  # GET /richiedenti/new.json
  def new
    @richiedente = Richiedente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @richiedente }
    end
  end

  # GET /richiedenti/1/edit
  def edit
    @richiedente = Richiedente.find(params[:id])
  end

  # POST /richiedenti
  # POST /richiedenti.json
  def create
    @richiedente = Richiedente.new(params[:richiedente])

    respond_to do |format|
      if @richiedente.save
        format.html { redirect_to @richiedente, notice: 'Richiedente was successfully created.' }
        format.json { render json: @richiedente, status: :created, location: @richiedente }
      else
        format.html { render action: "new" }
        format.json { render json: @richiedente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /richiedenti/1
  # PUT /richiedenti/1.json
  def update
    @richiedente = Richiedente.find(params[:id])

    respond_to do |format|
      if @richiedente.update_attributes(params[:richiedente])
        format.html { redirect_to @richiedente, notice: 'Richiedente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @richiedente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /richiedenti/1
  # DELETE /richiedenti/1.json
  def destroy
    @richiedente = Richiedente.find(params[:id])
    @richiedente.destroy

    respond_to do |format|
      format.html { redirect_to richiedenti_url }
      format.json { head :no_content }
    end
  end
end
