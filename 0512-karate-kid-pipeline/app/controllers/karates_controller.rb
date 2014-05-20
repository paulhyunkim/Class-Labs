class KaratesController < ApplicationController
  def index
  	@karates = Karate.all
  end
end
