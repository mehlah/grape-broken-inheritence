require_relative 'foo'

module Acme
  module V1
    class Base < Grape::API
      version ['v2', 'v1']

      mount Acme::V1::Foo
    end
  end
end
