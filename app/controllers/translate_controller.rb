# frozen_string_literal: true

class TranslateController < ApplicationController
  before_action :authenticate_user!
  def create
    return unless user_signed_in?
    translation_endpoint = ENV['IMAGE_PROXY_HOST'] || 'http://localhost:30031'

    resp = Faraday.post(translation_endpoint, text: params[:data][:text], to: params[:data][:to])
    render json: ActiveSupport::JSON.decode(resp.body)
  end
end
