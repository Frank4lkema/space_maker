class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    @spaces = Space.all
  end
end
