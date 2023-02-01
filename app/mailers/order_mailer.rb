class OrderMailer < ApplicationMailer

  def new_order_email
    @order = params[:order]

    mail(to: @order.email, subject: "Jungle order confirmation: Order ##{@order.id}")
  end

end

