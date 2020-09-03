class ImagesController < ApplicationController
    before_action :set_image, only: [:show, :destroy]

    def index
        images = Image.all
        render json: images, except: [:created_at, :updated_at]
    end

    def show
        render json: @image, except: [:created_at, :updated_at]
    end

    def create
        image = Image.new(image_params)

        if image.save
            render json: image, status: :created
        else
            render json: {error: image.errors, error_messages: image.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    def destroy
        @image.destroy
    end

    private
        def set_image
            @image = Image.find(params[:id])
        end

        def image_params
            params.require(:image).permit(:link)
        end
end
