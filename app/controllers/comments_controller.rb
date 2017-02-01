class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:id])
    @comment = @post.comments.create(params[:comment].permit(:name, :content))

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end
end
