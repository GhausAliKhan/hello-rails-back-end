Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'localhost:3001', '127.0.0.1:3001' # Specify the domain of the front-end app
  
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: false
    end
end
