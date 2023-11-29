class GalleryController < ApplicationController
    def create
        @gallery = Gallery.new(gallery_params)
        if @gallery.save
          redirect_to @gallery, notice: 'Gallery was successfully created.'
        else
          render :new
        end
      end
      

      def show
        @gallery = Gallery.find(params[:id])
      end
    

      def index
        @gallery = Gallery.find(params[:id])
      end
      

    def new
        @gallery = Gallery.new
    end

    def create 
        @gallery = Gallery.new(gallery_params)
        if gallery.save
            redirect_to gallery_path(@gallery)
            render :action => 'new' unless @gallery. persisted? && @gallery. persisted ==  false  =



      private
      # Use callbacks to share common setup or constraints between actions.
      def set_gallery
        @gallery = Gallery.find(params[:id])
      end

      private
      
      def gallery_params
        params.require(:gallery).permit(:name, posts_attributes: [:id, :title, :media_type, :stars, :description, :_destroy])
      end
      
end
