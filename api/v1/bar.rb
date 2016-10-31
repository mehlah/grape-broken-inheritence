module Acme
  module V1
    class Bar < Grape::API
      helpers do
        def bar_version
          'v1_bar'
        end
      end

      desc 'Returns the current API version, v1.'
      get 'bar' do
        { version: bar_version }
      end
    end
  end
end
