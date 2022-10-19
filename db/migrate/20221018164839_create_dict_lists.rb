class CreateDictLists < ActiveRecord::Migration[7.0]
  def change
    create_table :dict_lists do |t|
      t.string :name, null: false, default: "Dictation List"
      t.string :list, array: true, default: []
      t.references :user, foreign_key: true, index: true
      t.references :grade, foreign_key: true, index: true
      t.timestamps
    end
  end
end
