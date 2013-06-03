class EventiController < ApplicationController
  # GET /eventi
  # GET /eventi.json
  def index
    @eventi = Evento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eventi }
    end
  end

  # GET /eventi/1
  # GET /eventi/1.json
  def show
    @evento = Evento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evento }
    end
  end

  # GET /eventi/new
  # GET /eventi/new.json
  def new
    @evento = Evento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evento }
    end
  end

  # GET /eventi/1/edit
  def edit
    @evento = Evento.find(params[:id])
  end

  # POST /eventi
  # POST /eventi.json
  def create
    @evento = Evento.new(params[:evento])

    respond_to do |format|
      if @evento.save
        format.html { redirect_to @evento, notice: 'Evento was successfully created.' }
        format.json { render json: @evento, status: :created, location: @evento }
      else
        format.html { render action: "new" }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eventi/1
  # PUT /eventi/1.json
  def update
    @evento = Evento.find(params[:id])

    respond_to do |format|
      if @evento.update_attributes(params[:evento])
        format.html { redirect_to @evento, notice: 'Evento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventi/1
  # DELETE /eventi/1.json
  def destroy
    @evento = Evento.find(params[:id])
    @evento.destroy

    respond_to do |format|
      format.html { redirect_to eventi_url }
      format.json { head :no_content }
    end
  end
end
