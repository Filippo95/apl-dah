class AddAttachmentImageSecondimageToLibris < ActiveRecord::Migration
  def self.up
    change_table :libris do |t|
      t.attachment :image
      t.attachment :secondimage
    end
  end

  def self.down
    remove_attachment :libris, :image
    remove_attachment :libris, :secondimage
  end
end
