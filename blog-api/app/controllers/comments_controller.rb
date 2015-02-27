class CommentsController < ApplicationController

  def index
    render json: Post.all, except: :comments
  end

  def create
    comment = Comment.new(params.require(:comment).permit(:user_id, :post_id, :body))
    if comment.save
      render json: comment
    end
  end

end
