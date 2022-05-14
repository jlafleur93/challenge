class LocationsController < ApplicationController
    def create
        @item = Item.find(params[:item_id])
        @location = @item.locations.create(location_params)
        redirect_to item_path(@item)
      end

      def edit
        @location = location.find(params[:id])
      end

    private
     def location_params
        params.require(:location).permit(:locator, :body)
     end
end  
