class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit::Authorization

  # Only check policy scope for index actions
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  private

  def skip_pundit?
    # Skip Pundit for Devise and specific controllers like PagesController
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
