class DictList < ApplicationRecord
  belongs_to :grade, class_name: "grade", foreign_key: "grade_id"
  belongs_to :user, class_name: "user", foreign_key: "user_id"
end
