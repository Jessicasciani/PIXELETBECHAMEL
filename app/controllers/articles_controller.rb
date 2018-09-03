class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @article = Article.new
  end

  def new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.create(article_params)
    if params[:commit] == 'Publier'
      @article.published = true
    elsif params[:commit] == 'Sauvegarder'
      @article.published = false
    end
    @article.save
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if params[:commit] == 'Publier'
      @article.published = true
    elsif params[:commit] == 'Mettre en brouillon'
      @article.published = false
    end
    @article.update(article_params)
    redirect_to articles_path
  end



  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


private

  def article_params
    params.require(:article).permit(:photo, :title, :text, :published)
  end

end
