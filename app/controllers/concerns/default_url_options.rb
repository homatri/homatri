# frozen_string_literal: true

# Setup for I18n in app urls
module DefaultUrlOptions
  extend ActiveSupport::Concern

  included { around_action :switch_locale }

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  # Set the default url options for requests
  # locale set by efault
  def default_url_options
    { locale: I18n.locale }
  end
end
