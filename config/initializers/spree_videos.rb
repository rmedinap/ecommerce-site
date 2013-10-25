# Take a look at the Spree::Videos::Configuration class for details

Spree::Videos.configure do |conf|
  conf.youtube_url_params = {
    :show_title => "0",
    :enablejsapi => "1",
    :theme => "light",
    :modestbranding => "1",
    :wmode => "opaque",
    :rel => "0",
  }

  conf.html_options = {
    :width => 340,
    :height => 247
  }
end