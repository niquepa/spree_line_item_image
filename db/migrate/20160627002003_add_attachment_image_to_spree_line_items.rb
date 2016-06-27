class AddAttachmentImageToSpreeLineItems < ActiveRecord::Migration
  def self.up
    change_table :spree_line_items do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :spree_line_items, :image
  end
end
