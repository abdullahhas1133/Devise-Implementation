class PostsController < ApplicationController
  
  before_action :find_post
  before_action :authorized, except: %i[index]

  def index
    @posts = Post.all.order("created_at DESC")
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end

  end

  def welcome 
  
  end
  def update
   
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path  
  end

  def show   
    
  end

  def edit
  end

  private

  def find_post
    @post = if params[:id].present?
              Post.find(params[:id])
            else
              Post.new
            end
  end

  def post_params
    params.require(:post).permit(:name, :detail)
  end

  def authorized
    authorize @post
  end
end
