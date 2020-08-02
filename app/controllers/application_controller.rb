class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user
      flash[:notice] = "ログインに成功しました" 
      root_url
    else
      flash[:notice] = "新規登録完了しました。次に名前を入力してください" 
      root_path
       # 指定したいパスに変更
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end



  protected

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

end

