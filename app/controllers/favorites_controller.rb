class FavoritesController < ApplicationController
  def create
    favorite = current_user.favorites.create(post_id: params[:post_id])
    redirect_to posts_url, notice: "#you have liked this post"
  end

  def destroy
    favorite = current_user.favorites.destroy.(post_id: params[:post_id])
    redirect_to @post, notice: "#you have deleted like for this post"
  end
end
