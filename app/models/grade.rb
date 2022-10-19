class Grade < ApplicationRecord
  has_many :user_grades, dependent: :nullify
  has_many :grades, through: :user_grades
  has_many :disct_lists, class_name: "disct_list", foreign_key: "reference_id"
end
