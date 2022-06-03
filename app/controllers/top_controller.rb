class TopController < ApplicationController
  def index
    @regular_works = RegularWork.all
    @deliver_works = DeliverWork.all
    @product_management_works = ProductManagementWork.all
  end
end
