class UserGrade < ApplicationRecord
  belongs_to :user, class_name: "user", foreign_key: "user_id"
  belongs_to :grade, class_name: "grade", foreign_key: "grade_id"
end
