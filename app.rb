require_relative 'config/environment'
class App < Sinatra::Base
  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    "Hello #{params[:name]}!"
  end

	get "/goodbye/:name" do
    "Goodbye, #{params[:name]}."
  end

  get '/multiply/:a/:b' do
    "Result: #{params[:a].to_i * params[:b].to_i}"
  end



end