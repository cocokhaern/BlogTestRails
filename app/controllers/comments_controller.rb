class CommentsController < ApplicationController

  def create
    Comment.create(author:params[:author], content:params[:content], article_id:params[:id])
    redirect_to "/articles/#{params[:id]}"
  end

  def delete
    com = Comment.find(params[:id])
    com.destroy
    com.save
    redirect_to "/articles/#{com.article_id}"
  end
end
