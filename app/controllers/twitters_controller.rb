class TwittersController < ApplicationController
  include TwittersHelper

  def index
    @tweets = geo_search(params[:q]) unless params[:q].nil?
    @analyzer = Sentimental.new
  end
end
