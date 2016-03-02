require('pg')


class Kitsu

attr_reader(:first_name, :last_name, :address, :quantity, :size)

def initialize(options)

@first_name = options['first_name']
@last_name = options['last_name']
@address = options['address']
@quantity = options['quantity'].to_i
@size = options['size'].to_i
end

end


