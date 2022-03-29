class PagesController < ApplicationController
  include Pundit
  after_action :verify_policy_scoped
  
  def home
    @properties = policy_scope(Property.all)
  end

  def dashboard
    raise ActionController::RoutingError.new('Not Found') unless user_signed_in?
    @properties = policy_scope(Property.all)
  end
end
