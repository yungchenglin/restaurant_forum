class CreateCommets < ActiveRecord::Migration[5.1]
  def change
    create_table :commets do |t|
      t.text :content
      t.integer :restaurant_id
      t.integer :user_id

      t.timestamps
    end
  end
end
