require('pg')


class Kitsu

attr_reader(:first_name, :last_name, :address, :quantity, :female_size, :male_size)

def initialize(options)

@first_name = options['first_name']
@last_name = options['last_name']
@address = options['address']
@quantity = options['quantity'].to_i
@female_size = options['size'].to_i
@male_size = options['size'].to_i
end



def save()
  db = PG.connect({dbname: 'shop_database', host: 'localhost'})

  sql = "INSERT INTO kitsu (     
    first_name, 
    last_name,
    address,
    female_size,
    male_size,
    quantity) VALUES (
    '#{@first_name}',
    '#{@last_name}',
    #{@address},
    '#{@female_size}',
     #{@male_size},
     #{@quantity}
    )"

    db.exec(sql)
    db.close
end








def self.all()
  db = PG.connect({ dbname: 'shoe_database', host: 'localhost'})
  sql = "SELECT * FROM kitsu"
  kitsu = db.exec(sql)
  result = kitsu.map {|kitsu| Kitsu.new(kitsu)}
  db.close
  return result

end






end


