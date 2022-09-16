class CatsController < ApplicationController

    def index
        @cat = Cat.all
        render :index
    end

    def show
        @cat = Cat.find_by(id: params[:id])
        render :show
    end


    private
    def cat_params
        params.require(:cat).permits(:birth_date, :name, :color, :sex, :description)
    end
end

