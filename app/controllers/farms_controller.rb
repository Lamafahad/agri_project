class FarmsController < ApplicationController
    def  index 
        @farms = Farm.all
    end
    def new
        @farm = Farm.new
    end
    def destroy
        Farm.find(params[:id]).destroy
        redirect_to farms_path
    end
    def edit
        @farm = farm.find(params[:id])
    end
    def update
        farm = farm.find(params[:id])
        farm.update(farm_params)
        redirect_to farm
    end

    private
        def farm_params
            params.require(:name).permit(:name, :location)
        end
    end