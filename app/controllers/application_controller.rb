class ApplicationController < ActionController::Base
   before_filter :authenticate_user!
   protect_from_forgery with: :exception
   def resource_name
      :user
   end

   def resource
      @resource ||= User.new
   end

   def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
   end

   helper_method :resource, :resource_name, :devise_mapping
end
