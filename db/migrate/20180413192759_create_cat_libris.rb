class CreateCatLibris < ActiveRecord::Migration
  def change
    create_table :cat_libris do |t|
      t.string :nome
      t.text :descrizione

      t.timestamps null: false
    end
  end
end
