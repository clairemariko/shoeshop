require('minitest/autorun')
require_relative('../models/kitsu')

class TestKitsu <Minitest::Test


  def setup
    options = {
      'first_name' => 'Claire',
      'last_name' => 'Anderson',
      'address' => 'Winterfell, The North, Westeros',
      'quantity' => '10'


    }

    @kitsu= Kitsu.new(options)

  end



end
