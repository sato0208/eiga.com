# frozen_string_literal: true

# 管理者権限が付与されているユーザーに
# 管理画面（rails_admin）へのアクセスと全てのモデルに対しての全ての操作
# （新規保存、編集、削除など）」を許可する
class Ability
  include CanCan::Ability

  def initialize(user)
    if user.try(:admin?)
      can :access, :rails_admin
      can :manage, :all
    end
  end
end
