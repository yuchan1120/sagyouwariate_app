class RegularWorksController < ApplicationController
  def index
    @regular_works = RegularWork.all
  end
end
