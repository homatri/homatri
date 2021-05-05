# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PublicPages::LanguageSwitcherComponent, type: :component do
  let(:french) { OpenStruct.new(locale: 'fr', link: '/') }
  let(:links) { [french] }

  describe 'on root path' do
    before { render_inline(described_class.new(links: links)) }

    it 'has a link to french version' do
      expect(rendered_component).to have_link('English', href: '/en')
    end

    it 'has a link to english version' do
      expect(rendered_component).to have_link('French', href: '/fr')
    end
  end
end
