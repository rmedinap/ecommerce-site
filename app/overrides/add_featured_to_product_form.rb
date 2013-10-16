Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
                    :name => 'add_sale_price_to_product_edit',
                    :insert_after => "code[erb-loud]:contains('text_field :permalink')",
                    :text => "<%= f.field_container :featured, :class => ['checkbox'] do %>
                                <label>
                                  <%= f.check_box :featured %>
                                  <%= t(:featured) %>
                                </label>
                                <%= f.error_message_on :featured %>
                              <% end %>
                              ")
