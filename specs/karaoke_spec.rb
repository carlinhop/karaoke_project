require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke')
require_relative('../room')

class TestKaraoke < MiniTest::Test

  def setup
    @karaoke = Karaoke.new("Party Machine")
    @rumba_room = Room.new("Rumba",10,5)
    @pop_room = Room.new("Pop",20,10)
    @disco_room = Room.new("Disco",50,100)
    @karaoke.add_room(@rumba_room)
    @karaoke.add_room(@pop_room)
    @karaoke.add_room(@disco_room)
    
  end

  def test_karaoke_exists
    assert_equal(true, defined?(@karaoke) != nil  )
  end

  def test_karaoke_has_name
    assert_equal(true, @karaoke.name != nil)
  end

  def test_karaoke_can_have_rooms
    assert_equal(true, @karaoke.rooms != nil )
  end

  def test_karaoke_can_add_room
    assert_equal(true, @karaoke.rooms.length > 0)
  end


  def test_karaoke_can_remove_rooms
    old_number_of_rooms = @karaoke.rooms.length
    assert_equal(old_number_of_rooms - 1, @karaoke.remove_room(@rumba_room).length)
  end

  def test_karoke_can_store_money
    assert_equal(true, @karaoke.money != nil)
  end


  
end