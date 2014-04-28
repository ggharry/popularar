class StaticPagesController < ApplicationController
  def home
  end

  def veillance
    render :layout => false
  end

  def glass
    render :layout => false
  end
end
