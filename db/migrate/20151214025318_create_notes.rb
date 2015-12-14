class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.text :body, null: false
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
