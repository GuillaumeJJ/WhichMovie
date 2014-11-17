class CreateSeances < ActiveRecord::Migration
  def change
    create_table :seances do |t|
      t.string :heure
      t.integer :film_id
      t.integer :cinema_id

      t.timestamps
    end
  end
end
