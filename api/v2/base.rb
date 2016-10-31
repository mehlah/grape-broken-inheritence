require_relative 'foo'
require_relative 'bar'

module Acme
  module V2
    class Base < Grape::API
      version 'v2'

      mount Acme::V2::Foo
      mount Acme::V2::Bar
    end
  end
end
