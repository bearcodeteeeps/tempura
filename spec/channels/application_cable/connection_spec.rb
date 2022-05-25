# frozen_string_literal: true

require 'rails_helper'

module ApplicationCable
  describe Connection, type: :channel do
    subject { described_class }

    it { is_expected.to be_truthy }
  end
end
