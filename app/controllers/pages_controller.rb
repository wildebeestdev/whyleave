class PagesController < ApplicationController
require 'Eventful'

  before_action :authenticate_user!, only: [
    :inside
  ]


  def home
  end

  def locate_event
   params = {
         :coord => cookies[:lat_lng]
      }
      event = Eventful.new
      # results = event.search(params)
      redirect_to home_path
  binding.pry
  end

  def inside
  end
  
  
end
