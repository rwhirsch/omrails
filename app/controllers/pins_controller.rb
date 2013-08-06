class PinsController < ApplicationController
  # GET /data
  # GET /data.json
  def index
    @data = Datum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @data }
    end
  end

  # GET /data/1
  # GET /data/1.json
  def show
    @data = Datum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @data }
    end
  end

  # GET /data/new
  # GET /data/new.json
  def new
    @data = Datum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @data }
    end
  end

  # GET /data/1/edit
  def edit
    @data = Datum.find(params[:id])
  end

  # POST /data
  # POST /data.json
  def create
    @data = Datum.new(params[:datum])

    respond_to do |format|
      if @data.save
        format.html { redirect_to @data, notice: 'Datum was successfully created.' }
        format.json { render json: @data, status: :created, location: @datum }
      else
        format.html { render action: "new" }
        format.json { render json: @datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /data/1
  # PUT /data/1.json
  def update
    @data = Datum.find(params[:id])

    respond_to do |format|
      if @data.update_attributes(params[:datum])
        format.html { redirect_to @data, notice: 'Datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @data.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data/1
  # DELETE /data/1.json
  def destroy
    @data = Datum.find(params[:id])
    @data.destroy

    respond_to do |format|
      format.html { redirect_to data_url }
      format.json { head :no_content }
    end
  end
end
