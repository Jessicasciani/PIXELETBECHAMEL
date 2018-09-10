class PagesController < ApplicationController

  def home
  end

  def contact
    @disable_footer = true
  end

end
