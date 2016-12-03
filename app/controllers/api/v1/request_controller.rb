module Api
  module V1
    class RequestController < ApplicationController

      def create
        request = Request.create(request_params)
        if request.persisted?
          sendResponse(200, 'Request has been stored')
        else
          sendResponse(400, 'Request creation has failed', request.errors.full_messages)
        end
      end

      def show
        request = Request.find(params[:id])
        if request
          render json: request
        else
          sendResponse(400, 'Request not Found')
        end
      end

      def index
        requests = Request.all
        render json: requests
      end

      private
      def request_params
        ActionController::Parameters.new(JSON.parse(request.body.read)).require(:request).permit!
      end

    end
  end
end
