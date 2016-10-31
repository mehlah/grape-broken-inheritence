require_relative '../v1/bar'

module Acme
  module V2

    module BarHelpers
      extend ActiveSupport::Concern

      included do
        helpers do
          def bar_version
            'v2_bar'
          end
        end
      end
    end

    class Bar < Acme::V1::Bar
      include BarHelpers
    end
  end
end
