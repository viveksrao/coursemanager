class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.integer :topicduration
      t.boolean :done
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
