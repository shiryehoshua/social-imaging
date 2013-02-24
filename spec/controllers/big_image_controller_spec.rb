require 'spec_helper'

describe BigImageController do

  describe "GET 'image_name:string'" do
    it "returns http success" do
      get 'image_name:string'
      response.should be_success
    end
  end

end
