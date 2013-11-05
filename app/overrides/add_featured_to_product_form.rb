Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                    :name => 'add_sale_price_to_product_edit',
                    :insert_after => "code[erb-loud]:contains('text_field :permalink')",
                    :text => "<div class='field eight columns'><%= f.field_container :featured, :class => ['checkbox', 'alpha', 'four', 'columns'] do %>
                                <label>
                                  <%= f.check_box :featured %>
                                  <%= t(:featured) %>
                                </label>
                                <%= f.error_message_on :featured %>
                              <% end %>
                              <%= f.field_container :category_featured, :class => ['checkbox', 'omega', 'four', 'columns'] do %>
                                <label>
                                  <%= f.check_box :category_featured %>
                                  <%= t(:category_featured) %>
                                </label>
                                <%= f.error_message_on :category_featured %>
                              <% end %></div>
                              ")
