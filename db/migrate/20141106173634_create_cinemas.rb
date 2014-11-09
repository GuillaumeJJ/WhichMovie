class CreateCinemas < ActiveRecord::Migration
  def change
    create_table :cinemas do |t|
      t.string :ville
      t.string :adresse
      t.string :seancehoraire
      t.string :nom

      t.timestamps
    end
  end
end
