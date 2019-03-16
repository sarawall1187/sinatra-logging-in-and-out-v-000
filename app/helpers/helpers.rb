class Helpers

  def self.current_user(session)
    @user = User.find(session[:user_id])
  end

  def self.is_logged_in?(session)
<<<<<<< HEAD
     !!session[:user_id]
=======
    @user = User.find(params[:id])
    #  if session[:user_id] == @user.id

>>>>>>> 6aba98d60ae5eb5c2cac47074c78e2a39eacad75
  end
end
