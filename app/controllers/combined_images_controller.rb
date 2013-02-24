class CombinedImagesController < ApplicationController
  # GET /combined_images
  # GET /combined_images.json
  def index
    @combined_images = CombinedImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @combined_images }
    end
  end

  # GET /combined_images/1
  # GET /combined_images/1.json
  def show
    @combined_image = CombinedImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @combined_image }
    end
  end

  # GET /combined_images/new
  # GET /combined_images/new.json
  def new
    @combined_image = CombinedImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @combined_image }
    end
  end

  # GET /combined_images/1/edit
  def edit
    @combined_image = CombinedImage.find(params[:id])
  end

  # POST /combined_images
  # POST /combined_images.json
  def create
    @combined_image = CombinedImage.new(params[:combined_image])

    respond_to do |format|
      if @combined_image.save
        format.html { redirect_to @combined_image, notice: 'Combined image was successfully created.' }
        format.json { render json: @combined_image, status: :created, location: @combined_image }
      else
        format.html { render action: "new" }
        format.json { render json: @combined_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /combined_images/1
  # PUT /combined_images/1.json
  def update
    @combined_image = CombinedImage.find(params[:id])

    respond_to do |format|
      if @combined_image.update_attributes(params[:combined_image])
        format.html { redirect_to @combined_image, notice: 'Combined image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @combined_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combined_images/1
  # DELETE /combined_images/1.json
  def destroy
    @combined_image = CombinedImage.find(params[:id])
    @combined_image.destroy

    respond_to do |format|
      format.html { redirect_to combined_images_url }
      format.json { head :no_content }
    end
  end
end
