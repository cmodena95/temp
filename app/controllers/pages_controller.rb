class PagesController < ApplicationController
  include Pundit
  skip_before_action :authenticate_user!
  after_action :verify_authorized, except: :home
  after_action :verify_policy_scoped, only: :home
  
  def home
    @properties = policy_scope(Property.all)
  end

  def dashboard
    raise ActionController::RoutingError.new('Not Found') unless user_signed_in?
    @properties = Property.all
  end
end
