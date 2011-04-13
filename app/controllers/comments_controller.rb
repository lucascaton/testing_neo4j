class CommentsController < ApplicationController
 def create
    @post = Post.find params[:post_id]
    @comment = Comment.create! params[:comment]
    @post.comments << @comment
    @post.save
    redirect_to @post, :flash => {:notice => 'Comment was successfully created.'}
  end
end
