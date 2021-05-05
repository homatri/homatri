# frozen_string_literal: true

module PublicPages
  # Base controller for all public pages
  class ApplicationController < ::ApplicationController
    layout 'public_pages/application'

    before_action :set_language_switcher

    private

    # Initliaze a new instance language switcher
    def set_language_switcher
      @language_switcher_component =
        PublicPages::LanguageSwitcherComponent.new([])
    end
  end
end
