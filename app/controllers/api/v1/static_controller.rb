module Api
  module V1
    class StaticController < ApplicationController

      def hello
        hash = {member:{ operator: 'joshua', group: 'SEAL'} }
        sendResponse(200, 'OK', hash)
      end

    end
  end
end
