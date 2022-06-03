class TopController < ApplicationController
  def index
    @regular_works = RegularWork.all
    @deliver_works = DeliverWork.all
  end
end
