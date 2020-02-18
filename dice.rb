require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
  "Hello, world! </h1>"
end

get "tacos" do
  "Can I please get some tacos?</h1>"
end

