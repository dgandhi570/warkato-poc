class WebhooksController < ApplicationController
    skip_before_action :verify_authenticity_token
  
    def receive
      payload = JSON.parse(request.body.read)
      if payload['ref'] == 'refs/heads/main' && payload['commits'].any?
        # Do something with the commits
        payload['commits'].each do |commit|
          puts "New commit: #{commit['message']}"
        end
      end
      render plain: 'ok'
    end
  end
  