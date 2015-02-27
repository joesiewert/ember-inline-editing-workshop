ActiveModel::Serializer.setup do |config|
  config.embed = :ids
  config.embed_in_root = true
end

Rails.configuration.middleware.insert_before 0, "Rack::Cors" do
  allow do
    origins '*'
    resource '*', :headers => :any, :methods => [:get, :post, :options]
  end
end
