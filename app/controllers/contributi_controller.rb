class ContributiController < ApplicationController
  before_filter :find_richiedente
  # GET /contributi
  # GET /contributi.json
  def index
    @contributi = Contributo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contributi }
    end
  end

  # GET /contributi/1
  # GET /contributi/1.json
  def show
    @contributo = Contributo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contributo }
    end
  end

  # GET /contributi/new
  # GET /contributi/new.json
  def new
    @contributo = Contributo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contributo }
    end
  end

  # GET /contributi/1/edit
  def edit
    @contributo = Contributo.find(params[:id])
  end

  # POST /contributi
  # POST /contributi.json
  def create
    @contributo = Contributo.new(params[:contributo])

    respond_to do |format|
      if @richiedente.contributi << @contributo
        format.html { redirect_to richiedente_url(@richiedente), notice: 'Contributo was successfully created.' }
        format.json { render json: @contributo, status: :created, location: @contributo }
      else
        format.html { render action: "new" }
        format.json { render json: @contributo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /contributi/1
  # PUT /contributi/1.json
  def update
    @contributo = @richiedente.contributi.find(params[:id])

    respond_to do |format|
      if @contributo.update_attributes(params[:contributo])
        format.html { redirect_to @richiedente, notice: 'Contributo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contributo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contributi/1
  # DELETE /contributi/1.json
  def destroy
    @contributo = Contributo.find(params[:id])
    @contributo.destroy

    respond_to do |format|
      format.html { redirect_to contributi_url }
      format.json { head :no_content }
    end
  end

private
  def find_richiedente
    @richiedente_id = params[:richiedente_id]
    redirect_to richiedenti_url unless @richiedente_id
    @richiedente = Richiedente.find(@richiedente_id)
  end  
end
