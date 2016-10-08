require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
# require_relative('../karaoke')
# require_relative('../room')
# require_relative('../song')

class TestGuest < MiniTest::Test
  def setup
    @guest1 = Guest.new("jose", 100)
  end

  def test_guest_has_money
    assert_equal(true, @guest1.money != nil)
  end
end