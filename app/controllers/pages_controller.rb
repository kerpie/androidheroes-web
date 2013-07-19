class PagesController < ApplicationController
  
  def landing_index
  	respond_to do |format|
  		format.html
  	end
  end

  def register_mail

  	invitation = Invitation.new
  	invitation.mail = params[:mail]
  	invitation.save

  	respond_to do |format|
  		format.js
  	end
  end
end
