class PhotosController < ApplicationController
    def create
        @items = Item.all
        @item = Item.find(params["item_id"].to_i)
        if params[:file]
        # The data is a file upload coming from <input type="file" />
        @item.avatar.attach(params[:file])
        # Generate a url for easy display on the front end 
        photo = url_for(@item.avatar)
        end
        # elsif params[:camera]
        #   # The data is Base64 and coming from the camera.  
        #   # Use that data to create a file for active storage.
        #   blob = ActiveStorage::Blob.create_after_upload!(
        #     io: StringIO.new((Base64.decode64(params[:camera].split(",")[1]))),
        #     filename: "user.png",
        #     content_type: "image/png",
        #   )
        #   @item.avatar.attach(blob)
        #   photo = url_for(@item.avatar)
        # else
        #   # Maybe we want to just store a url or the raw Base64 data
        #   photo = photo_params[:photo]
        # end
          # Now save that url in the item
          
        if @item.update(photo: photo)
          render json: @items, status: :ok
        end
      end

    def update
        @item = Item.find(params["item_id"].to_i)
        if params[:file]
            # The data is a file upload coming from <input type="file" />
            @item.avatar.attach(params[:file])
            # Generate a url for easy display on the front end 
            photo = url_for(@item.avatar)
          end
    end

    def create_photo
        new_photo = Photo.create(title: params[:title])
        if params[:file]
            # The data is a file upload coming from <input type="file" />
            new_photo.avatar.attach(params[:file])
            # Generate a url for easy display on the front end 
            photo = url_for(new_photo.avatar)
        end
        if new_photo.update(url: photo)
            render json: new_photo, status: :ok
         end
    end 
end
