class ApplicationController < ActionController::Base
    # Add this line to see the progress bar long enough
  # and remove it when it has the expected styles
  # before_action -> { sleep 3 }
  before_action :authenticate_user!, unless: :devise_controller?
end
