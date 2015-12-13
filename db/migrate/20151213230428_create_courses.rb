class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :author
      t.integer :duration
      t.string :level
      t.integer :rating
      t.date :released

      t.timestamps null: false
    end
  end
end
