# frozen_string_literal: true

require 'system_helper'

RSpec.describe 'Homepage', type: :system do
  let(:home) { prism.public_pages.load }

  describe 'login links' do
    context 'when hospital administrator' do
      it 'has a link to login page' do
        expect(home).to have_link('Hopitaux')
      end
    end
  end
end
