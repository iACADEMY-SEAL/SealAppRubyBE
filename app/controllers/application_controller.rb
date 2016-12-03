class ApplicationController < ActionController::API
  include ::ActionController::Serialization






  def sendResponse(code, message, data=nil)
    token = nil

    if data!=nil
      data.to_json
    end

    status = Status.new( code, message, token, data).to_json
    render json: status
  end

end
