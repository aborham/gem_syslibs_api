class ApplicationController < ActionController::API
  include ActionController::Serialization

  before_filter :add_allow_credentials_headers

  respond_to :json, :html

  def default_serializer_options
    { root: false }
  end

  def add_allow_credentials_headers
    response.headers['Access-Control-Allow-Origin'] = request.headers['Origin'] || '*'
    response.headers['Access-Control-Credentials'] = 'true'
  end
end
