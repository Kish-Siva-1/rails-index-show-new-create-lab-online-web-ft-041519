class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end
  
  def new
  end
  
  def create
    @coupon = Coupon.create(coupon_code: params[:coupon][:title], store: params[:coupon][:description])
    redirect_to coupon_path(@coupon)
  end
  
end


