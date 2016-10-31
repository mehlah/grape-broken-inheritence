require_relative 'foo'
require_relative 'bar'

module Acme
  module V1
    class Base < Grape::API
      version ['v2', 'v1']

      mount Acme::V1::Foo
      mount Acme::V1::Bar
    end
  end
end
