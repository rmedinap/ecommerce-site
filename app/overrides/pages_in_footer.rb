Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :name => "contact_in_footer",
                     :insert_bottom => "#footer-right #footer-pages ul",
                     :text => "<li><a href='/blog'>Blog</a></li> | <li><a href='/contact'>Contacto</a></li>",
                     :disabled => false
                    )
