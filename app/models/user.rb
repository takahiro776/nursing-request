class User < ApplicationRecord
  # ユーザーの役割の設定
  enum role: { general: 1, admin: 99 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:lockable
         validates :name,:role,presence: true

         VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,100}+\z/i
         validates :password, format: { with: VALID_PASSWORD_REGEX }
end
