# This migration comes from spree_blog (originally 20140213201700)
class AddVariantToPosts < ActiveRecord::Migration
  def change
    add_column :spree_posts, :variant_id, :integer
  end
end
