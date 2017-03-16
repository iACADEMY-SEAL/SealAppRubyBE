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
          sendResponse(200,'OK', request)
        else
          sendResponse(400, 'Request not Found')
        end
      end

      def index
        requests = Request.all
        sendResponse(200,'OK',requests)
      end

      private
      def request_params
        ActionController::Parameters.new(JSON.parse(request.body.read)).require(:request).permit(
          :requester,
          :subject,
          :summary,
          :isChecked,
          :studentNumber,
          :category
        )
      end

    end
  end
end
