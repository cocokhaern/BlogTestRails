class ArticlesController < ApplicationController
  def index
    @articles=Article.page(params[:page]).per(5)
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    art = Article.new(title:params[:title], content:params[:content])
    art.save
    redirect_to "/articles/#{art.id}"
  end
end
