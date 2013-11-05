class AddCategoryFeaturedProductToProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :category_featured, :boolean, :default => false, :null => false
  end
end
