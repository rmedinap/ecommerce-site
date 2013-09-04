Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "contact_topics_admin_tabs",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:contact_topics, :icon => 'icon-email')",
                     :disabled => false)
