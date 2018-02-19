class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @article = Article.new
  end

  def new
  end

  def create
    @article = Article.create(article_params)
    @article.save
    redirect_to articles_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


private

  def article_params
    params.require(:article).permit(:photo, :title, :text)
  end

end
