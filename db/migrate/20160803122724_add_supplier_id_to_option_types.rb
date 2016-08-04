class AddSupplierIdToOptionTypes < ActiveRecord::Migration
  def change
        add_column :spree_option_types, :supplier_id, :integer
  end
end
