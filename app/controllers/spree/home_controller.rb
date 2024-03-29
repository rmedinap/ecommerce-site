module Spree
  class HomeController < Spree::StoreController
    helper 'spree/products'
    respond_to :html

    def index
      @searcher = Spree::Config.searcher_class.new(params)
      @searcher.current_user = try_spree_current_user
      @searcher.current_currency = current_currency
      @products = @searcher.retrieve_products
      @featured_products = Product.featured_products
      # La primera taxonomía determinará las categorías (tres columnas).
      @first_taxonomy = Spree::Taxonomy.first
      @all_taxons = @first_taxonomy.taxons - [@first_taxonomy.taxons.root]
      respond_with(@products)
    end
  end
end
