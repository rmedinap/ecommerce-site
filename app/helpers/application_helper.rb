module ApplicationHelper

  def my_link_to_cart(text = nil)
    # return "" if current_spree_page?(spree.cart_path)

    text = text ? h(text) : t('cart')
    css_class = nil

    if current_order.nil? or current_order.line_items.empty?
      text = "#{text}: (#{t('empty')})"
      css_class = 'empty'
    else
      text = "#{text}: (#{current_order.item_count})  <span class='amount'>#{current_order.display_total.to_html}</span>".html_safe
      css_class = 'full'
    end

    link_to text, spree.cart_path, :class => "cart-info #{css_class}"
  end

  def colors_array
    ["sky", "green", "orange"]
  end

  def line_break(line)
    l1 = line.split[0..1].join(" ")
    l2 = (line.split - l1.split).join(" ")
    line_print = l1 + "<br/>" + l2
    line_print.html_safe
  end

end
