class ApplicationController < ActionController::Base

  protect_from_forgery

  #before_filter :ensure_domain
  #
  #APP_DOMAIN = 'www.epicurio.info'
  #
  #def ensure_domain
  #  if request.env['HTTP_HOST'] != APP_DOMAIN
  #    # HTTP 301 is a "permanent" redirect
  #    redirect_to "http://#{APP_DOMAIN}", :status => 301
  #  end
  #end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

end