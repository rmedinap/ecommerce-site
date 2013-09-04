Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :name => "contact_in_footer",
                     :insert_bottom => "#footer-right #footer-pages ul",
                     :text => "<li><a href='/contact'>Contact</a></li>",
                     :disabled => false
                    )
