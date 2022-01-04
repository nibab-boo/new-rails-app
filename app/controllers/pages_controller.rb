class PagesController < ApplicationController
  def about
  end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien' ]
    if params[:member].present?
      @members = @members.select{ |name| name.downcase.start_with?(params[:member])}
    end
  end

  def home
  end
end
