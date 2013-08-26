require "bliss_hash_items/version"

module BlissHashItems
  # Returns all line items in a nicely prepared hash that has all
  # occuring article ids as keys
  def line_items_to_hash(args = {})
    quantities = {}
    items = args[:items] || line_items
    items.each do |i|
      a_id = i.article_id
      if quantities[a_id]
        quantities[a_id][:quantity] += i.quantity
      else
        hash = { :quantity => i.quantity }
        if i.respond_to? :price_value
          hash.merge!({ :price_value => i.price_value, :price_currency => i.price_currency })
        end
        quantities[a_id] = hash
      end
    end
    quantities
  end
end
