require 'json'

class Status

  attr_accessor :code, :message, :token, :data

  def initialize( code, message, token, data=nil)
    @code = code
    @token = token
    @message = message
    @data = data
  end

  def as_json(options={})
    {
      code: @code,
      message: @message,
      token: @auth_token,
      data: @data
    }
  end

  def to_json(*options)
    as_json(*options).to_json(*options)
  end

end
