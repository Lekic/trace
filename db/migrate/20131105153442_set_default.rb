class SetDefault < ActiveRecord::Migration
  def self.up
    change_column :users, :admin, :boolean, default: false
  end
end
