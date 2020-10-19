class CartItemPhotosController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @cart_items = @user.cart_items
        @cart_item = CartItem.find(params["item_id"].to_i)
        if params[:file]
          # The data is a file upload coming from <input type="file" />
          @cart_item.avatar.attach(params[:file])
          # Generate a url for easy display on the front end 
          photo = url_for(@cart_item.avatar)
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
        if @cart_item.update(photo: photo)
          render json: @cart_items, status: :ok
        end
      end
end
