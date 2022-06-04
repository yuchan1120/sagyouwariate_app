class DeliverWorksController < ApplicationController
  def index
    @deliver_works = DeliverWork.all
  end
end
