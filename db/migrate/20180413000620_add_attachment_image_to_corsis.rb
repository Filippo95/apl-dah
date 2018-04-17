class AddAttachmentImageToCorsis < ActiveRecord::Migration
  def self.up
    change_table :corsis do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :corsis, :image
  end
end
