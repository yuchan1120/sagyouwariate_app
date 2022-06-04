class ProductManagementWorksController < ApplicationController
  def index
    @product_management_works = ProductManagementWork.all
  end
end
