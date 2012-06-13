class WineTypesController < ApplicationController
  # GET /wine_types
  # GET /wine_types.json
  def index
    @wine_types = WineType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wine_types }
    end
  end

  # GET /wine_types/1
  # GET /wine_types/1.json
  def show
    @wine_type = WineType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wine_type }
    end
  end

  # GET /wine_types/new
  # GET /wine_types/new.json
  def new
    @wine_type = WineType.new
    @users = User.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wine_type }
    end
  end

  # GET /wine_types/1/edit
  def edit
    @wine_type = WineType.find(params[:id])
    @users = User.all
  end

  # POST /wine_types
  # POST /wine_types.json
  def create
    @wine_type = WineType.new(params[:wine_type])

    respond_to do |format|
      if @wine_type.save
        format.html { redirect_to @wine_type, notice: 'Wine type was successfully created.' }
        format.json { render json: @wine_type, status: :created, location: @wine_type }
      else
        format.html { render action: "new" }
        format.json { render json: @wine_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wine_types/1
  # PUT /wine_types/1.json
  def update
    @wine_type = WineType.find(params[:id])

    respond_to do |format|
      if @wine_type.update_attributes(params[:wine_type])
        format.html { redirect_to @wine_type, notice: 'Wine type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wine_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wine_types/1
  # DELETE /wine_types/1.json
  def destroy
    @wine_type = WineType.find(params[:id])
    @wine_type.destroy

    respond_to do |format|
      format.html { redirect_to wine_types_url }
      format.json { head :no_content }
    end
  end
end
