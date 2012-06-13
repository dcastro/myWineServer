class FormTastingsController < ApplicationController
  # GET /form_tastings
  # GET /form_tastings.json
  def index
    @form_tastings = FormTasting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @form_tastings }
    end
  end

  # GET /form_tastings/1
  # GET /form_tastings/1.json
  def show
    if params[:id]
      @form_tasting = FormTasting.find(params[:id])
    else if params[:wine_type_id]
      @wineType = WineType.where(:id => params[:wine_type_id]).first
      if @wineType.form_tasting
        @form_tasting = @wineType.form_tasting
      else
        @wineType.create
      end
      @form_tasting = @wineType.form_tasting
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @form_tasting }
    end
  end

  # GET /form_tastings/new
  # GET /form_tastings/new.json
  def new
    @form_tasting = FormTasting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @form_tasting }
    end
  end

  # GET /form_tastings/1/edit
  def edit
    @form_tasting = FormTasting.find(params[:id])
  end

  # POST /form_tastings
  # POST /form_tastings.json
  def create
    @form_tasting = FormTasting.new(params[:form_tasting])

    respond_to do |format|
      if @form_tasting.save
        format.html { redirect_to @form_tasting, notice: 'Form tasting was successfully created.' }
        format.json { render json: @form_tasting, status: :created, location: @form_tasting }
      else
        format.html { render action: "new" }
        format.json { render json: @form_tasting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /form_tastings/1
  # PUT /form_tastings/1.json
  def update
    @form_tasting = FormTasting.find(params[:id])

    respond_to do |format|
      if @form_tasting.update_attributes(params[:form_tasting])
        format.html { redirect_to @form_tasting, notice: 'Form tasting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @form_tasting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_tastings/1
  # DELETE /form_tastings/1.json
  def destroy
    @form_tasting = FormTasting.find(params[:id])
    @form_tasting.destroy

    respond_to do |format|
      format.html { redirect_to form_tastings_url }
      format.json { head :no_content }
    end
  end
end
