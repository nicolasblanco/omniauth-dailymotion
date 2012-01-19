require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Dailymotion < OmniAuth::Strategies::OAuth2
      DEFAULT_SCOPE = 'email userinfo'
      
      option :name, "dailymotion"
      
      option :client_options, {
        :site => 'https://api.dailymotion.com',
        :authorize_url => '/oauth/authorize',
        :token_url => '/oauth/token'
      }
      
      uid { raw_info['id'] }
      
      info do
        prune!({
          'screenname' => raw_info['screenname'],
          'url' => raw_info['url'],
          'email' => raw_info['email'],
          'fullname' => raw_info['fullname'],
          'description' => raw_info['description'],
          'gender' => raw_info['gender']
        })
      end
      
      credentials do
        prune!({
          'expires' => access_token.expires?,
          'expires_at' => access_token.expires_at
        })
      end
      
      extra do
        prune!({
          'raw_info' => raw_info
        })
      end
      
      def raw_info
        @raw_info ||= access_token.get('/me', :params => { :fields => %w(id,url,email,fullname,description,gender).join(",") }).parsed
      end

      def authorize_params
        super.tap do |params|
          # params.merge!(:display => request.params['display']) if request.params['display']
          params[:scope] ||= DEFAULT_SCOPE
        end
      end
      
      private
      
      def prune!(hash)
        hash.delete_if do |_, value| 
          prune!(value) if value.is_a?(Hash)
          value.nil? || (value.respond_to?(:empty?) && value.empty?)
        end
      end      
    end
  end
end

OmniAuth.config.add_camelization 'dailymotion', 'Dailymotion'
