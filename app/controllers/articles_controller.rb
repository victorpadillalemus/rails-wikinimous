class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_strong_params)
    redirect_to article_path(@article)
  end

  def edit
  end

  def show
  end

  def update
    @article.update(article_strong_params)
    redirect_to articles_path(@article)
  end

  def destroy
  end

  private

  def article_strong_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
