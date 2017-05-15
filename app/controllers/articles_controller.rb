class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index, :show]


  def index
      @articles = Article.all.order("created_at DESC").paginate(page:params[:page], per_page: 3)

      @other_articles = Article.all.order("created_at ASC")

end
  

  def new
    @article = Article.new
  end


  def create
      @article = Article.new(article_params)
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
  end

  def show
  end

  def edit
  end


  def update
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
  end

  def destroy
      @article.destroy
      redirect_to root_path
  end

  private

  def find_article
    @article = Article.friendly.find(params[:id])
  end

  def article_params
      params.require(:article).permit(:title, :body, :slug)
  end

end
