xml.order_list(:for_product => @product.title) do
  for o in @product.orders
    xml.order do
        xml.name(o.id)
        xml.name(o.name)
        xml.name(o.email)
        xml.name(o.address)
        xml.email(o.pay_type)
    end
  end
end