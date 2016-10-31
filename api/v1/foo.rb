module Acme
  module V1
    class Foo < Grape::API
      desc 'Returns the current API version, v1.'
      get do
        { version: 'v1' }
      end

      get 'only_in_v1' do
        { only_in_v1: true }
      end

      get 'in_both_v1_and_v2' do
        { in_both_v1_and_v2: 'v1' }
      end

      get 'found_in_v1_but_not_found_in_v2' do
        { found_in_v1_but_not_found_in_v2: true }
      end
    end
  end
end
