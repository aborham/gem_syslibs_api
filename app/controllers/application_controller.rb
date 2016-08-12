class ApplicationController < ActionController::API
  include ActionController::Serialization

  before_action :add_allow_credentials_headers


  def default_serializer_options
    { root: false }
  end

  def add_allow_credentials_headers
    response.headers['Access-Control-Allow-Origin'] = request.headers['Origin'] || '*'
    response.headers['Access-Control-Credentials'] = 'true'
  end
end
