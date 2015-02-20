class PagesController < ApplicationController
require 'Eventful'

  before_action :authenticate_user!, only: [
    :inside
  ]


  def home

    params = {

    }
    event = Eventful.new
    results = event.search(params)
binding.pry
  end

  def inside
  end
  
  
end
