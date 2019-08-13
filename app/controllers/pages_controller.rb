class PagesController < ApplicationController
  layout 'home_layout'
  skip_before_action :authenticate_user!, only: :home
  def home
  end
end
