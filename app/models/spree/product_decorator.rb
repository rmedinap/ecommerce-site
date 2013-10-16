Spree::Product.class_eval do
  attr_accessible :featured

  scope :featured_products, lambda{ where(:featured => true) }
end
