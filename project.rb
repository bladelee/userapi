require 'grape'

module Project
  class Api < Grape::API
    format :json

    rescue_from :all do |e|
      Rack::Response.new([ e.message ], 500, { "Content-type" => "application/json" }).finish
    end

    params {requires :a, :type => String}
    get '/test(.:format)' do
      data = {:a => params[:a]}
      {:code => 200}.merge!(data)
    end

    resource :users
    desc "create a user"
    params do
      requires :name, :type => String
    end
    post do

    end
    
  end
end
