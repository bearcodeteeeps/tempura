# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'HelloWorld' do
  it 'renders greeting from JavaScript', js: true do
    visit '/'
    expect(page).to have_text('Itadakimasu! 🍱')
  end
end
