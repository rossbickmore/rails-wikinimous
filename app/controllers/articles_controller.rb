class ArticlesController < ApplicationController
   before_action :set_article, only: [:show, :edit, :update, :destroy]
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_path(@article)
  end

  def index
    @articles = Article.all
  end

  def show
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :details, :completed)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
