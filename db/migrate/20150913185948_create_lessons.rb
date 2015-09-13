class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
