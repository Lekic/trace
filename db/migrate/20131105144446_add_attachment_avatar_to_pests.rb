class AddAttachmentAvatarToPests < ActiveRecord::Migration
  def self.up
    change_table :pests do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :pests, :avatar
  end
end
