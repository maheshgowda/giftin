# This migration comes from spree_blog (originally 20140217084200)
class AddProductLabelToPosts < ActiveRecord::Migration
  def self.up
    add_column :spree_posts, :product_label, :string
  end

  def self.down
    drop_column :spree_posts, :product_label
  end
end
