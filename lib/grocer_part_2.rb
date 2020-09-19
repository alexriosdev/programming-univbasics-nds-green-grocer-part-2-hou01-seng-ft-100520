require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  coupons.each do |coupon|
    coupon_item = find_item_by_name_in_collection(coupon[:item], cart)
    if coupon_item[:count] >= coupon[:num]
      cart << { item: "#{coupon_item[:item]} W/COUPON", 
                price: coupon[:cost] / coupon[:num], 
                clearance: coupon_item[:clearance],
                count: coupon[:num]
              }
      coupon_item[:count] -= coupon[:num]
    end
  end
  cart
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  cart.map { |item| item[:clearance] ? item[:price] *= 0.8 : item }
  
  
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
