class AboutsController < ApplicationController

    before_action :find_about, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except:[:index, :show]



    def index
        @abouts = About.all.order("created_at DESC")
    end

    def new
        @about = About.new
    end


    def create
        @about = About.new(about_params)
        if @about.save
            redirect_to @about
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @about.update(about_params)
            redirect_to @about
        else
            render 'edit'
        end
    end

    def destroy
        @about.destroy
        redirect_to root_path
    end

    private

    def find_about
        @about = About.friendly.find(params[:id])
    end

    def about_params
        params.require(:about).permit(:title, :body, :slug)
    end
end
