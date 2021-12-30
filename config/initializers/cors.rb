# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
   allow do
<<<<<<< HEAD
    origins ENV["API_DOMAIN"] || ""

    resource '*',
      headers: :any,
       methods: [:get, :post, :put, :patch, :delete, :options, :head]
=======
     origins ENV["API_DOMAIN"] || "localhost:8080"

     resource '*',
       headers: :any,
       cmethods: [:get, :post, :put, :patch, :delete, :options, :head]
>>>>>>> 531a2c7a894450d4a365c214ad9ef8e2ed66af09
  end
end
