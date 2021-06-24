# config/initializers/cors.rb

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://windevent.netlify.app'
      resource '*', headers: :any, methods: [:get, :post, :patch, :put, :delete, :options]
    end
  end