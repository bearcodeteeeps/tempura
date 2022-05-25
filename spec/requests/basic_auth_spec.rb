# frozen_string_literal: true

require 'rails_helper'

describe 'Basic auth', type: :request do
  context 'with basic auth enabled' do
    let(:username) { 'admin' }
    let(:password) { 'secret' }
    let(:credential_stub) do
      OpenStruct.new(
        test: {
          http_basic_auth: {
            username: username,
            password: password
          }
        }
      )
    end

    let(:headers) do
      {
        'HTTP_AUTHORIZATION' => ActionController::HttpAuthentication::Basic.encode_credentials(username, password)
      }
    end

    before do
      allow(BasicAuthenticable).to receive(:required?).and_return(true)
      allow(Rails.application).to receive(:credentials).and_return(credential_stub)
      get '/', headers: headers
    end

    it 'grants access' do
      expect(response).to be_successful
    end
  end
end
