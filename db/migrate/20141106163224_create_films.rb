class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :titre
      t.string :realisateur
      t.string :acteurs
      t.string :BO
      t.string :synopsis
      t.date :datesortie
      t.string :affiche

      t.timestamps
    end
  end
end
