class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  	# ログイン後にマイページに飛ぶ
	def after_sign_in_path_for(resource)
   		movies_path(resource)
 	end

 	# サインアップ時に保存するカラムを追加する
	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
	end
	# データ更新時のパラメーターを設定する
	def configure_account_update_params
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email])
    end
end
