require 'spec_helper'

describe Acme::App do
  include Rack::Test::Methods

  def app
    Acme::App
  end

  context 'v1' do
    it 'root returns v1' do
      get '/v1'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq({ version: 'v1' }.to_json)
    end

    it 'only_in_v1 returns from v1' do
      get '/v1/only_in_v1'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq({ only_in_v1: true }.to_json)
    end

    it 'only_in_v2 returns not found' do
      get '/v1/only_in_v2'
      expect(last_response.status).to eq(404)
    end

    it 'in_both_v1_and_v2 returns from v1' do
      get '/v1/in_both_v1_and_v2'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq({ in_both_v1_and_v2: 'v1' }.to_json)
    end

    it 'found_in_v1_but_not_found_in_v2 returns from v1' do
      get '/v1/found_in_v1_but_not_found_in_v2'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq({ found_in_v1_but_not_found_in_v2: true }.to_json)
    end

    it 'not_found returns a 404' do
      get '/not_found'
      expect(last_response.status).to eq(404)
    end

    it 'bar returns from v1' do
      get '/v1/bar'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq({ version: 'v1_bar' }.to_json)
    end
  end
end
