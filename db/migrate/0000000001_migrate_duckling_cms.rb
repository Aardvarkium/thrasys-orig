class MigrateDucklingCms < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.string :layout
      t.string :template
      t.string :cached_slug
      t.timestamps
    end
    create_table :page_parts do |t|
      t.integer :page_id
      t.text :content
      t.string :title
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
    drop_table :page_parts
  end
end
