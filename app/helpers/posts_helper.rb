module PostsHelper
  def choose_new_or_edit
    if action_name == 'new'
      confirm_posts_path
    elsif action_name == 'edit'
      post_path
    end
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def authenticate_user
    if @current_user == nil
      flash[ :notice ]= t('notice.login_needed')
      redirect_to new_session_path
    end
  end

end
