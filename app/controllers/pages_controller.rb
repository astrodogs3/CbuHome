class PagesController < ApplicationController
  def home
    @pagetitle = "Cbu Home page"
  end

  def resources
    @pagetitle = "Cbu Resources page"
  end

  def about
    @pagetitle = "Cbu About page"
  end

  def contact
    @pagetitle = "Cbu Contact page"
  end

end
