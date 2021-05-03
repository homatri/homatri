# frozen_string_literal: true

require 'system_helper'

RSpec.describe 'Homepage', type: :system do
  describe 'public demo pages shows english if locale is forced in url ' do
    before { visit '/en' }

    context 'when hospital administrator' do
      it 'has a link to hospitals page' do
        expect(page).to have_link('Hospitals')
      end

      it 'has a link to town halls page' do
        expect(page).to have_link('Town Halls')
      end

      it 'has a link to law courts page' do
        expect(page).to have_link('Law courts')
      end
    end
  end

  describe 'public demo pages shows french if locale is forced in url ' do
    before { visit '/fr' }

    context 'when hospital administrator' do
      it 'has a link to hospitals page' do
        expect(page).to have_link('Hopitaux')
      end

      it 'has a link to mayors page' do
        expect(page).to have_link('Mairies')
      end

      it 'has a link to law courts page' do
        expect(page).to have_link('Tribunaux')
      end
    end
  end

  describe 'public demo pages shows french by default' do
    before { visit root_path }

    context 'when hospital administrator' do
      it 'has a link to hospitals page' do
        expect(page).to have_link('Hopitaux')
      end

      it 'has a link to mayors page' do
        expect(page).to have_link('Mairies')
      end
    end
  end
end
