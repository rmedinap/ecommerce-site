Spree::Product.class_eval do
  attr_accessible :featured, :category_featured

  scope :featured_products, lambda{ where(:featured => true) }
  scope :category_featured_products, lambda{ where(:category_featured => true) }
end
