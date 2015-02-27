class PostsController < ApplicationController

  def index
    render json: Post.all, except: :comments
  end

  def show
    render json: Post.find(params[:id])
  end

end
