class CleaningWorksController < ApplicationController
  def index
    @cleaning_works = CleaningWork.all
  end
end
