class ProductSerializer
  def self.serialize(product)

    # start with the open brace to create a valid JSON object
    serialized_product = '{'

    serialized_product += '"name": "' + product.name + '", '
    serialized_product += '"description": "' + product.description + '", '

    # the author association can also be represented in JSON
    serialized_product += "\"price\": #{product.price},"
    serialized_product += "\"inventory\": #{product.inventory}"


    # and end with the close brace
    serialized_product += '}'
  end
end
