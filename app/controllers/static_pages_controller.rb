class StaticPagesController < ApplicationController
  def home
    @list_goss = Gossip.all
    @gossip = Gossip.find_by(params[:id])
  end

  def team
    
  end

  def contact
    
  end

end
