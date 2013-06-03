class AzioniController < ApplicationController
  # GET /azioni
  # GET /azioni.json
  def index
    @azioni = Azione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @azioni }
    end
  end

  # GET /azioni/1
  # GET /azioni/1.json
  def show
    @azione = Azione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @azione }
    end
  end

  # GET /azioni/new
  # GET /azioni/new.json
  def new
    @azione = Azione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @azione }
    end
  end

  # GET /azioni/1/edit
  def edit
    @azione = Azione.find(params[:id])
  end

  # POST /azioni
  # POST /azioni.json
  def create
    @azione = Azione.new(params[:azione])

    respond_to do |format|
      if @azione.save
        format.html { redirect_to @azione, notice: 'Azione was successfully created.' }
        format.json { render json: @azione, status: :created, location: @azione }
      else
        format.html { render action: "new" }
        format.json { render json: @azione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /azioni/1
  # PUT /azioni/1.json
  def update
    @azione = Azione.find(params[:id])

    respond_to do |format|
      if @azione.update_attributes(params[:azione])
        format.html { redirect_to @azione, notice: 'Azione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @azione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /azioni/1
  # DELETE /azioni/1.json
  def destroy
    @azione = Azione.find(params[:id])
    @azione.destroy

    respond_to do |format|
      format.html { redirect_to azioni_url }
      format.json { head :no_content }
    end
  end
end
