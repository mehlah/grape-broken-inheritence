require 'v2'
require 'v1'

module Acme
  class App < Grape::API
    format :json
    
    mount Acme::V2::Base
    mount Acme::V1::Base
  end
end
