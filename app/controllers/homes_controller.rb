class HomesController < ApplicationController
  before_action :authenticate_user!

  def index
    user_signed_in?
    current_user
    user_session
  end
end
