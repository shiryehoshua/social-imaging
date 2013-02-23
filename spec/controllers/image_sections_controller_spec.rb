require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ImageSectionsController do

  # This should return the minimal set of attributes required to create a valid
  # ImageSection. As you add validations to ImageSection, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ImageSectionsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all image_sections as @image_sections" do
      image_section = ImageSection.create! valid_attributes
      get :index, {}, valid_session
      assigns(:image_sections).should eq([image_section])
    end
  end

  describe "GET show" do
    it "assigns the requested image_section as @image_section" do
      image_section = ImageSection.create! valid_attributes
      get :show, {:id => image_section.to_param}, valid_session
      assigns(:image_section).should eq(image_section)
    end
  end

  describe "GET new" do
    it "assigns a new image_section as @image_section" do
      get :new, {}, valid_session
      assigns(:image_section).should be_a_new(ImageSection)
    end
  end

  describe "GET edit" do
    it "assigns the requested image_section as @image_section" do
      image_section = ImageSection.create! valid_attributes
      get :edit, {:id => image_section.to_param}, valid_session
      assigns(:image_section).should eq(image_section)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ImageSection" do
        expect {
          post :create, {:image_section => valid_attributes}, valid_session
        }.to change(ImageSection, :count).by(1)
      end

      it "assigns a newly created image_section as @image_section" do
        post :create, {:image_section => valid_attributes}, valid_session
        assigns(:image_section).should be_a(ImageSection)
        assigns(:image_section).should be_persisted
      end

      it "redirects to the created image_section" do
        post :create, {:image_section => valid_attributes}, valid_session
        response.should redirect_to(ImageSection.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved image_section as @image_section" do
        # Trigger the behavior that occurs when invalid params are submitted
        ImageSection.any_instance.stub(:save).and_return(false)
        post :create, {:image_section => {}}, valid_session
        assigns(:image_section).should be_a_new(ImageSection)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ImageSection.any_instance.stub(:save).and_return(false)
        post :create, {:image_section => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested image_section" do
        image_section = ImageSection.create! valid_attributes
        # Assuming there are no other image_sections in the database, this
        # specifies that the ImageSection created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ImageSection.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => image_section.to_param, :image_section => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested image_section as @image_section" do
        image_section = ImageSection.create! valid_attributes
        put :update, {:id => image_section.to_param, :image_section => valid_attributes}, valid_session
        assigns(:image_section).should eq(image_section)
      end

      it "redirects to the image_section" do
        image_section = ImageSection.create! valid_attributes
        put :update, {:id => image_section.to_param, :image_section => valid_attributes}, valid_session
        response.should redirect_to(image_section)
      end
    end

    describe "with invalid params" do
      it "assigns the image_section as @image_section" do
        image_section = ImageSection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ImageSection.any_instance.stub(:save).and_return(false)
        put :update, {:id => image_section.to_param, :image_section => {}}, valid_session
        assigns(:image_section).should eq(image_section)
      end

      it "re-renders the 'edit' template" do
        image_section = ImageSection.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ImageSection.any_instance.stub(:save).and_return(false)
        put :update, {:id => image_section.to_param, :image_section => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested image_section" do
      image_section = ImageSection.create! valid_attributes
      expect {
        delete :destroy, {:id => image_section.to_param}, valid_session
      }.to change(ImageSection, :count).by(-1)
    end

    it "redirects to the image_sections list" do
      image_section = ImageSection.create! valid_attributes
      delete :destroy, {:id => image_section.to_param}, valid_session
      response.should redirect_to(image_sections_url)
    end
  end

end
