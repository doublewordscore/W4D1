require 'byebug'

class ContactSharesController < ApplicationController

  def create
    # contact = params[:contact_id]
    # user = params[:user_id]
    share = ContactShare.new(contact_shares_params)
    if share.save
      render json: share
    else
      render(
        json: contact_share.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  private
  def contact_shares_params
    params.require(:contact_share).permit(:contact_id, :user_id)
  end
end
