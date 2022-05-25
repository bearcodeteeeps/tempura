# frozen_string_literal: true

if %w[development test].include?(Rails.env)
  require 'bundler/audit/cli'

  namespace :bundler do
    desc 'Updates the ruby-advisory-db and runs audit'
    task audit: :environment do
      %w[update check].each do |command|
        Bundler::Audit::CLI.start [command]
      end
    end
  end
end
