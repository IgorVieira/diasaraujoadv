class ServicesController < ApplicationController

    def index
        @services = Service.all.order("created_at  DESC")

        @other_services  =  Service.all.order("created_at ASC")
    end

    def new
        @service = Service.new
    end

    def create
        @service = Service.new(service_params)
        if @service.save
            redirect_to @service
        else
            render 'new'
        end

    end

    def show
    end

    def edit
    end


    def update
        if @service.update(service_params)
            redirect_to @service
        else
            render 'edit'
        end
    end


    def destroy
        @service.destroy
        redirect_to root_path
    end

    private

    def find_service
        @service = Service.friendly.find(params[:id])
    end

    def service_params
        params.require(:service).permit(:title, :body, :slug)
    end


end
