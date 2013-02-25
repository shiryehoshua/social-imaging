class ImageSectionsController < ApplicationController
  # GET /image_sections
  # GET /image_sections.json
  def index
    @image_sections = ImageSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @image_sections }
    end
  end

  # GET /image_sections/1
  # GET /image_sections/1.json
  def show
    @image_section = ImageSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image_section }
    end
  end

  # GET /image_sections/new
  # GET /image_sections/new.json
  def new
    @image_section = ImageSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image_section }
    end
  end

  # GET /image_sections/1/edit
  def edit
    @image_section = ImageSection.find(params[:id])
  end

  # POST /image_sections
  # POST /image_sections.json
  def create
    @image_section = ImageSection.new(params[:image_section])

    respond_to do |format|
      if @image_section.save
        format.html { redirect_to @image_section, notice: 'Image section was successfully created.' }
        format.json { render json: @image_section, status: :created, location: @image_section }
      else
        format.html { render action: "new" }
        format.json { render json: @image_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /image_sections/1
  # PUT /image_sections/1.json
  def update
    @image_section = ImageSection.find(params[:id])
    ci = @image_section.combined_image

    respond_to do |format|
      if @image_section.update_attribute(:sketchpad_json, params[:drawn_json])
        format.html { redirect_to edit_image_section_path(ci.image_sections.sample), 
                      notice: 'Image section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_sections/1
  # DELETE /image_sections/1.json
  def destroy
    @image_section = ImageSection.find(params[:id])
    @image_section.destroy

    respond_to do |format|
      format.html { redirect_to image_sections_url }
      format.json { head :no_content }
    end
  end
end
