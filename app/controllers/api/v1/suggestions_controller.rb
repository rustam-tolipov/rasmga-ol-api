module Api
  module V1
    class SuggestionsController < ApplicationController
      before_action :authenticate_user!
      rescue_from ActiveRecord::RecordNotFound, with: :not_found
      SUGGESTED_USERS_LIMIT = 5

      def index
        @users = User.all.limit(SUGGESTED_USERS_LIMIT).order(created_at: :desc).reject { |user| user.id == current_user.id || current_user.followees.include?(user) }
        render json: @users, each_serializer: SuggestionSerializer, status: :ok
      end
    end
  end
end