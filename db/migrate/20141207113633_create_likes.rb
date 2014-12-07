class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :user_name
      t.references :film, index: true

      t.timestamps
    end
  end
end
