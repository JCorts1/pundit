class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  skip_after_action :verify_policy_scoped, only: [:home] # Skip Pundit check for home action

  def home
  end
end
