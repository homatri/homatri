# frozen_string_literal: true

module PublicPages
  # Handles the plumbing required to display the switch locale
  # component
  # == Example
  #
  # render PublicPages::LanguageSwitcherComponent.new(...)
  class LanguageSwitcherComponent < ViewComponent::Base
    # @param links [Array]
    def initialize(links:)
      super
      @links = links
    end
  end
end
