class CartsController < ApplicationController

  def show
    @cart = Cart.find(current_cart)
  end

  def add_item
    @cart = Cart.find(current_cart)
    product = Product.find(params[:id])
    unless @line_item = @cart.line_items.find_by_product_id(params[:id])
      @line_item = @cart.line_items.build
      @line_item.product_id = product.id
      @line_item.quantity = 1
    else
      @line_item.quantity += 1
    end
    respond_to do |format|
      if @line_item.save
        format.html { redirect_to cart_path, notice: 'Item was
successfully added on a line item in the cart.' }
      else
        format.html { redirect_to cart_path, notice: 'An error occurred.
        Item was not added to cart.' }
      end
    end
  end

  def remove_item
    @cart = Cart.find(current_cart)
    line_item_to_destroy = @cart.line_items.find(params[:id])
    line_item_to_destroy.destroy
    respond_to do |format|
      format.html { redirect_to cart_path, notice: 'Line item has been
removed' }
    end
  end

  def checkout
    #if @order.bill
    if current_user
      @cart = Cart.find(current_cart)
      @order = Order.create
      @cart.line_items.each do |li|
        @order.line_items << LineItem.create(product: li.product,
                                             quantity: li.quantity)
      end
      #logger.debug("Order is #{@order.inspect}")
      @order.save
      session[:order_id] = @order.id
      @cart.destroy
      #OrderMailer.order_complete(@order).deliver
      #flash[:notice] = "Order contents: #{@order.inspect},
      flash[:notice] = "You are logged in and your current cart has been
saved as an order and is shown below. You may now proceed with checking out
 ..."
      redirect_to order_show_path
    else
      flash[:notice] = "You need to log in to or create a new account to
continue with checking out."
      redirect_to log_in_path
    end
  end

  def empty_cart
    @cart = Cart.find(current_cart)
    @cart.destroy
    flash[:notice] = "Your current cart has been emptied. Please feel free
to continue shopping by adding any items to a new cart."
    redirect_to root_path
  end

end
