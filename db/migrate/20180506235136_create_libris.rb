class CreateLibris < ActiveRecord::Migration
  def change
    create_table :libris do |t|
      t.string :titolo
      t.float :prezzo
      t.string :autore
      t.text :descrizione
      t.integer :cat
      t.integer :order

      t.timestamps null: false
    end
  end
end
