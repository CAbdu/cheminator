class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @cities = Corridor.all.map(&:city).uniq
  end

  def team
  end


end
