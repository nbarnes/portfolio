CarrierWave.configure do |config|
  
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
    region: 'us-west-2'
  }

  if Rails.env.test?
    config.fog_directory = "nbarnes-portfolio-test"
  elsif Rails.env.development?
    config.fog_directory = "nbarnes-portfolio-development"
  elsif Rails.env.production?
    config.fog_directory = "nbarnes-portfolio-production"
  end
    
end
