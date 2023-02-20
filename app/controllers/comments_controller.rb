class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path, status: :see_other
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :text, :status)        
    end
end
