module Acme
  module V1

    module BarHelpers
      extend ActiveSupport::Concern

      included do
        helpers do
          def bar_version
            'v1_bar'
          end
        end
      end
    end

    class Bar < Grape::API
      include BarHelpers

      desc 'Returns the current API version, v1.'
      get 'bar' do
        { version: bar_version }
      end
    end
  end
end
