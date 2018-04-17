class AddAttachmentImageToSeminaris < ActiveRecord::Migration
  def self.up
    change_table :seminaris do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :seminaris, :image
  end
end
