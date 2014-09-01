class PolaroidsController < ApplicationController
  # GET /polaroids
  # GET /polaroids.json
  def index
    @polaroids = Polaroid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @polaroids }
    end
  end

  # GET /polaroids/1
  # GET /polaroids/1.json
  def show
    @polaroid = Polaroid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @polaroid }
    end
  end

  # GET /polaroids/new
  # GET /polaroids/new.json
  def new
    @polaroid = Polaroid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @polaroid }
    end
  end

  # GET /polaroids/1/edit
  def edit
    @polaroid = Polaroid.find(params[:id])
  end

  # POST /polaroids
  # POST /polaroids.json
  def create
    @polaroid = Polaroid.new(params[:polaroid])

    respond_to do |format|
      if @polaroid.save
        format.html { redirect_to @polaroid, notice: 'Polaroid was successfully created.' }
        format.json { render json: @polaroid, status: :created, location: @polaroid }
      else
        format.html { render action: "new" }
        format.json { render json: @polaroid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /polaroids/1
  # PUT /polaroids/1.json
  def update
    @polaroid = Polaroid.find(params[:id])

    respond_to do |format|
      if @polaroid.update_attributes(params[:polaroid])
        format.html { redirect_to @polaroid, notice: 'Polaroid was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @polaroid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /polaroids/1
  # DELETE /polaroids/1.json
  def destroy
    @polaroid = Polaroid.find(params[:id])
    @polaroid.destroy

    respond_to do |format|
      format.html { redirect_to polaroids_url }
      format.json { head :no_content }
    end
  end
end
