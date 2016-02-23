%w[sinatra haml tilt/haml rack/cors].each{ |gem| require gem }
use Rack::Cors do
  # allow all origins in development
  allow do
    origins '*'
    resource '*',
        :headers => :any,
        :methods => [:get, :post, :delete, :put, :options]
  end
end

get('/') do
  @url = "http://#{request.env["SERVER_NAME"]}:8001/"
  haml :index, layout: !request.xhr?
end
