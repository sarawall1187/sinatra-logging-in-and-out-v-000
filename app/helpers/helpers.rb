class Helpers

  def self.current_user(session)
    @user = User.find(session[:user_id])
  end

  def self.is_logged_in?(session)
     !!session[:user_id]
    @user = User.find(params[:id])
    #  if session[:user_id] == @user.id
    end
end
