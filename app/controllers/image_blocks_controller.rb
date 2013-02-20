class ImageBlocksController < ApplicationController
  # GET /image_blocks
  # GET /image_blocks.json
  def index
    @image_blocks = ImageBlock.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @image_blocks }
    end
  end

  # GET /image_blocks/1
  # GET /image_blocks/1.json
  def show
    @image_block = ImageBlock.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @image_block }
    end
  end

  # GET /image_blocks/new
  # GET /image_blocks/new.json
  def new
    @image_block = ImageBlock.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image_block }
    end
  end

  # GET /image_blocks/1/edit
  def edit
    @image_block = ImageBlock.find(params[:id])
  end

  # POST /image_blocks
  # POST /image_blocks.json
  def create
    @image_block = ImageBlock.new(params[:image_block])

    respond_to do |format|
      if @image_block.save
        format.html { redirect_to @image_block, notice: 'Image block was successfully created.' }
        format.json { render json: @image_block, status: :created, location: @image_block }
      else
        format.html { render action: "new" }
        format.json { render json: @image_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /image_blocks/1
  # PUT /image_blocks/1.json
  def update
    @image_block = ImageBlock.find(params[:id])

    respond_to do |format|
      if @image_block.update_attributes(params[:image_block])
        format.html { redirect_to @image_block, notice: 'Image block was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image_block.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_blocks/1
  # DELETE /image_blocks/1.json
  def destroy
    @image_block = ImageBlock.find(params[:id])
    @image_block.destroy

    respond_to do |format|
      format.html { redirect_to image_blocks_url }
      format.json { head :no_content }
    end
  end
end
