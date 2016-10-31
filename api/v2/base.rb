require_relative 'foo'

module Acme
  module V2
    class Base < Grape::API
      version 'v2'

      mount Acme::V2::Foo
    end
  end
end
