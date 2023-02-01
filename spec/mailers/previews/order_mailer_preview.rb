# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def new_order_email
    # temporary order for the preview
    order = Order.new(id: 5, email: "joe@gmail.com", total_cents: 2499)

    OrderMailer.with(order: order).new_order_email
  end
end
