Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
                     :name => "contact_in_header",
                     :insert_bottom => "#main-nav-bar",
                     :text => "<li><a href='/blog'>Blog</a></li> | <li><a href='/contact'>Contacto</a></li>",
                     :disabled => false
)
