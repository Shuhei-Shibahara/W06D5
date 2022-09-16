class CatsController < ApplicationController

    def index
        @cats = Cat.all
        render :index
        # render json: @cats
    end

    def show
        @cat = Cat.find_by(id: params[:id])
        render :show
        # render json: @cat
    end

    def create
        # debugger
        @cat = Cat.new(cat_params)

        if @cat&.save
            render :show
            # render json: @cat
        else
            render :new
            # render json: ['did not work']
        end
    end

    def update
        @cat = Cat.find_by(id: params[:id])
        if @cat.update
            # render :show
            render json: @cat

        else
            # render :edit
            render json: ['did not work']
        end
    end

    def new
        @cat = Cat.new
        render :new
    end

    def edit
        @cat = Cat.find_by(id: params[:id])
        render :edit
    end


    private
    def cat_params
        params.require(:cat).permit(:birth_date, :name, :color, :sex, :description)
    end
end

