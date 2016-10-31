require 'v2/base'
require 'v1/base'

module Acme
  class App < Grape::API
    format :json

    mount Acme::V2::Base
    mount Acme::V1::Base
  end
end
