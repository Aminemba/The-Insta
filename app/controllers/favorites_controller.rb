class FavoritesController < ApplicationController
  
  def create
    favorite = current_user.favorites.create(post_id: params[:post_id])
    redirect_to new_post_path, notice: " Post added to your Favorites"
  end

  def destroy
    @favorites = current_user.favorite_posts.all
    favorite = current_user.favorites.destroy.(id: params[:id])
    redirect_to new_post_path, notice: "Post removed from your Favorites"
  end
end
