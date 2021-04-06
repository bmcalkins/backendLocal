if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_backendLocal', domain: 'backendLocal-json-api'
  else
    Rails.application.config.session_store :cookie_store, key: '_backendLocal'
end