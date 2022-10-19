class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.string :year, :null => false
      t.timestamps
    end
  end
end
