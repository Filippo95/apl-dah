class AddAttachmentImageToPhotoAttivita < ActiveRecord::Migration
  def self.up
    change_table :photo_attivita do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :photo_attivita, :image
  end
end
