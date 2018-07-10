module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.includes(:events), include: ["events"]
      end

    end
  end
end
