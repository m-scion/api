require 'Cipher.rb'

class ApiController < ApplicationController
  def addUser
  end

  def comment
  end

  def confirmEmail
  end

  def deleterPost
  end

  def post
  end

  def profileUpdate
  end

  def rate
  end

  def update
  end

  def postUpdate
  end

  def keyRequest
    @Encoder = Cipher.new
    @string = request.query_string
    @key = Rack::Utils.parse_nested_query(@string)["key"]
    @request_data = @Encoder.Decode(@key)
    @data = JSON.parse(@request_data)
  end
end
