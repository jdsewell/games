class EpicenterController < ApplicationController
  def feed
    @posts = Post.all
  end

  def show_user
    @user = User.find(params[:id])
  end

  def now_following
  end

  def unfollow
  end
end
