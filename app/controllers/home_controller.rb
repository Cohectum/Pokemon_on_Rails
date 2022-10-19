class HomeController < ApplicationController
  def about
  end

  def index
  end

  def search

  end

  def results
    @results = Pokemon.where("name = #{}")
  end
end
