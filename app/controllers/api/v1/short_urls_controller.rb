module Api
  module V1
    class ShortUrlsController < ApplicationController
      before_action :find_url_by_token, only: %i[show destroy]

      def index
        @urls = ShortUrl.all.order(id: :desc)
        render json: @urls
      end

      def shorten
        url = ShortUrl.find_or_initialize_by(original_url: params[:original_url])
        return render json: { shortUrl: url.short_url } if url.persisted?

        url.original_url = params[:original_url]
        url.save!
        render json: { shortUrl: url.short_url }
      end

      def show
        @url.increment!(:clicks)
        redirect_to @url.original_url, allow_other_host: true
      end

      def destroy
        @url.destroy
        render json: { message: 'Shortened URL deleted successfully' }
      end

      def fetch_original_url
        token = params[:original_url].split('/').last
        url = ShortUrl.find_by(token: token)
        return render json: { error: 'Not Found' }, status: :not_found unless url

        render json: { original_url: url.original_url }
      end

      private

      def find_url_by_token
        @url = ShortUrl.find_by(token: params[:token])

        return render json: { error: 'Not Found' }, status: :not_found unless @url
      end
    end
  end
end
