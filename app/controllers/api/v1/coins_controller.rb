# nethttp.rb
require 'uri'
require 'net/http'

class Api::V1::CoinsController < ApplicationController
    def index 
        
        url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/info'
        if params[:symbol] != nil
            url += '?symbol=' + params[:symbol]
        end 
        uri = URI.parse(url)
        http = Net::HTTP.new(uri.host, uri.port)
        # assuming http is generated like this http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        # might need this as well? 
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        request = Net::HTTP::Get.new(uri.request_uri)
        request['X-CMC_PRO_API_KEY'] = ENV['CRYPTO_API_KEY']
        res = http.request(request)
        render json:res.body
    end
end
