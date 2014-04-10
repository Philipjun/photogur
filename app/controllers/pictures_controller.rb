class PicturesController < ApplicationController
  def index
    @pictures = [
      {
        :title => "A",
        :artist => "A",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
      }

      {
        :title => "B",
        :artist => "B",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"

      }

      {
        :title =>"C",
        :artist => "C",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
      }
      
    ]
  end

  def show
    @pictures = [
      {
        :title => "A",
        :artist => "A",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"
      }

      {
        :title => "B",
        :artist => "B",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
      }
      
      {
        :title =>"C",
        :artist => "C",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
      }
    ]
    @picture = @pictures[params[:id].to_i]
end

def new
end

def create
  render :text => "Saving a picture. URL:#{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end
end
