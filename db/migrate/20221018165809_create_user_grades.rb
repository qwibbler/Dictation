class CreateUserGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :user_grades do |t|
      t.references :user, foreign_key: true, index: true
      t.references :grade, foreign_key: true, index: true
      t.timestamps
    end
  end
end
