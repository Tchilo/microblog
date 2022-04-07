class LikesController < ApplicationController
  load_and_authorize_resource

  def create
    post = Post.find(params[:id])
    like = current_user.likes.create(post: post)
    if like.save!
      flash[:success] = 'like added'
    else
      flash[:error] = 'like was not added'
    end
    redirect_to user_post_path(@post)
  end

  # load_and_authorize_resource

  # def create
  #   post = Post.find(params[:id])
  #   like = current_user.likes.create(post: post)
  #   like.save!

  #   if like.save
  #     flash[:success] = 'Post Liked!'
  #     redirect_to user_post_path
  #   else
  #     flash.now[:error] = 'Like not added...'
  #     redirect_to post_path(@post)
  #   end
  # end
end
