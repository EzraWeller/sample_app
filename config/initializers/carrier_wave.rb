if Rails.env.production?
  CarrierWave.configure do |configure|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAI6DNGDYY6O4CXGRA'],
      :aws_secret_access_key => ENV['PdY8wBWQUiBm2hRQxm4TmHFBx+DJMKKRD/CH7O9M']
    }
    config.fog_directory     =  ENV['ezras-sample-app-bucket']
  end
end
