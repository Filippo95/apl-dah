class CreatePhotoAttivita < ActiveRecord::Migration
  def change
    create_table :photo_attivita do |t|
      t.integer :id_attivita
      t.string :titolo

      t.timestamps null: false
    end
  end
end
