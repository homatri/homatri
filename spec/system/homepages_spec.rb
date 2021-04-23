# frozen_string_literal: true

require 'system_helper'

RSpec.describe 'Homepage', type: :system do
  before { visit root_path }

  describe 'login links' do
    context 'when hospital administrator' do
      it 'has a link to login page' do
        expect(page).to have_link('Hopitaux')
      end
    end
  end
end
