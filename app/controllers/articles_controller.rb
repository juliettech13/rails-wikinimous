class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    find
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
  end

  def edit
    find
  end

  def update
    find
    @article.update(article_params)
  end

  def destroy
    find
    @article.destroy
    redirect_to root_path
  end

  private

  def find
    @article = Article.find(params[:id])
  end

  def task_params
    params.require(:article).permit(:title, :content)
  end
end
