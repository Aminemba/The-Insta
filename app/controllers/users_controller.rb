class UsersController < ApplicationController

  before_action :set_user, only: [ :favorite,:show , :edit, :update, :destroy]

  def show
    @post=Post.new
    @posts = Post.all
    @posts = @posts.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    @user = User.find(params[:id])
    set_meta_tags title: @user.name
    @posts = @user.posts.includes(:photos, :likes, :comments)
    @saved = Post.joins(:bookmarks).where("bookmarks.user_id=?", current_user.id).
      includes(:photos, :likes, :comments) if @user == current_user
  end

  def index
    @user = User.new(user_params)
    @users = User.all
  end


  def new
    if logged_in?
      redirect_to new_post_path
    end

    @user = User.new
  end


  def edit
  end

  def update
  @user = User.find(params[:id])
if @user == current_user
  if @user.update(user_params)
    redirect_to user_path(@user.id), success: 'User was successfully updated.'
  else
    render :edit
  end
else
  redirect_to user_path(@current_user.id), notice: 'Prohibited action.'
end

end


def favourite
  @favorites= Favorite.all
  @post = Post.new
  @posts = Post.all
  @posts = @posts.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  @user = User.find(params[:id])
  @favorites = current_user.favorite_posts.all
end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html {redirect_to new_session_path ,notice: "Your account has been successfully created"}
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
  params.require(:user).permit( :name, :email, :password , :password_confirmation ,:icon, :icon_cache)
  end

  def avatar_url user
  return user.image if user.image
  gravatar_id = Digest::MD5::hexdigest(@user.id).downcase
  "https://www.gravatar.com/avatar/#{gravatar_id}.jpg"
   end

end
