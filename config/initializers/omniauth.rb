OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'SmCO5zCuN0zrQCzhkWw4A3ham', 'O6GSu1kTdkkc5PXAcdzpMm7pVhguGlE2TWyvRIGceNS1v3pG4G'
end
