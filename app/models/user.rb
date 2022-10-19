class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_grades, dependent: :destroy
  has_many :grades, through: :user_grades
  has_many :dict_lists, dependent: :destroy
end
