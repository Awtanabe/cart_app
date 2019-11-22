class CustomAuthenticationFailure < Devise::FailureApp 
  protected
    def redirect_url
      url = request.env["REQUEST_PATH"]
      result = /^\/admin_users/ =~ url

      if result = /^\/admin_users/ =~ url
       new_admin_user_session_path
      else
        new_user_session_path
      end
 #rootに飛ばす場合
  #    root_path+"users/auth/facebook" #自動でfacebook認証させる場合
    end 
  end 
