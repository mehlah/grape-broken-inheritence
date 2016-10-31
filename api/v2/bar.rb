require_relative '../v1/bar'

module Acme
  module V2
    class Bar < Acme::V1::Bar
      helpers do
        def bar_version
          'v2_bar'
        end
      end
    end
  end
end
