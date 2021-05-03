# frozen_string_literal: true

# Setup for I18n in app urls
module DefaultUrlOptions
  extend ActiveSupport::Concern

  # Set the default url options for requests
  # locale set by efault
  def default_url_options
    { locale: I18n.locale }
  end
end
