class PicturesController < ApplicationController
  def index
    @pictures = [
      {
        :title =>"NA",
        :artist => "NA",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
      },
    

      {
        :title => "A",
        :artist =>"A",
        :url => "http://images.nationalgeographic.com/wpf/media-live/photos/000/659/cache/godafoss-waterfall-iceland_65948_990x742.jpg"
      },
    

      {
        :title => "B",
        :artist =>"B",
        :url => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRxzFBSCjriwukEr5L95WU2ebLdpzdQVIkS9eL5c3yCx1ZPP7Ciow"
      }
    ]
    end

  def show
    @pictures = [
      {
        :title => "NA",
        :artist => "NA",
        :url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
      },

      {
        :title => "A",
        :artist => "A",
        :url => "http://images.nationalgeographic.com/wpf/media-live/photos/000/659/cache/godafoss-waterfall-iceland_65948_990x742.jpg"
      },
      {
        :title =>"B",
        :artist =>"B",
        :url => "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRxzFBSCjriwukEr5L95WU2ebLdpzdQVIkS9eL5c3yCx1ZPP7Ciow"
      }

    ]
    @picture = @pictures[params[:id].to_i]
end

def create
    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

  def new
  end




end
