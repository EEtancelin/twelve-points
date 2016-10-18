class PagesController < ApplicationController
  def home
    @fines = Fine.all
  end
end
