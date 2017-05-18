class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @cities = Corridor.all.map(&:city).uniq
  end
end
