class ResumesController < ApplicationController

    def index
        @resumes = Resume.all.order("created_at DESC").paginate(page:params[:page], per_page: 3)
    end

    def new
        @resume = Resume.new
    end

    def create
        @resume = Resume.new(resume_params)
        if @resume.save
            redirect_to @resume
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @resume.update(resume_params)
            redirect_to @resume
        else
            render 'edit'
        end
    end

    def destroy
        @resume.destroy
        redirect_to root_path
    end


    private

    def find_resume
        @resume = Resume.friendly.find(params[:id])
    end

    def resume_params
        params.require(:resume).permit(:title,:body, :slug)
    end
end
