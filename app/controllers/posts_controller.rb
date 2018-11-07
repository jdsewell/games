class PostsController < ApplicationController
  before_action :all_posts, only: [:index, :create]
  before_action :set_post, only: [:edit, :update, :destroy]


  # GET /posts/new
  def update
    @post.update(post_params)
  end
  def new
    @post = Post.new
  end

  def create
    #@post = Post.new(post_params)
    @post = Post.create(post_params)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def all_posts
      @posts = Post.all
    end
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:user_id, :message)
    end
end
