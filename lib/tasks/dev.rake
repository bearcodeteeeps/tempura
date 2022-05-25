# frozen_string_literal: true

if %w[development test].include?(Rails.env)
  require 'factory_bot'

  namespace :dev do
    desc 'Sample data for local development environment'
    task prime: 'db:setup' do
      include FactoryBot::Syntax::Methods

      # create(:user, email: "user@example.com", password: "password")
    end
  end
end
