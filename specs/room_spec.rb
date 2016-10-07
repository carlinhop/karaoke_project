require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < MiniTest::Test
  def setup
    @karaoke = Karaoke.new("Party Machine")
    @room1 = Room.new("Jazzy",2, 5)
    @guest1 = Guest.new("jose")
    @guest2 = Guest.new("rita")
    @guest3 = Guest.new("aladin")
    @guest4 = Guest.new("Pablo Escobar")
    @room1.add_guest(@guest1)
    @song1 =  Song.new("No woman no cry", "Bob Marley")
    @room1.add_song(@song1)
  end

  def test_room_has_name
    assert_equal(true, @room1.name != nil)
  end

  def test_room_can_have_guests
    assert_equal(true, @room1.guests != nil)
  end

  def test_room_can_add_a_guest
    assert_equal(true, @room1.guests.length > 0)
  end

  def test_room_can_remove_a_guests
    old_number_of_guests = @room1.guests.length 
    @room1.remove_guest(@guest1) 
    assert_equal(old_number_of_guests - 1 , @room1.guests.length )
  end

  def test_room_can_have_songs
    assert_equal(true, @room1.songs != nil)
  end

  def test_room_can_add_a_song
    @room1.add_song(@song1)
    assert_equal(true, @room1.songs.length > 0)
  end

  def test_room_can_delete_a_song
    old_number_of_songs = @room1.songs.length
    @room1.remove_song(@song1)
    assert_equal(old_number_of_songs - 1, @room1.songs.length)
  end

  def test_room_has_guest_limit
    assert_equal(true, @room1.guests_limit != nil)
  end

  def test_add_a_guest_doesnt_exceeds_guest_limit
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal(2, @room1.guests.length)
  end

  def test_room_has_fee
    assert_equal(true, @room1.fee != nil)
  end

  # def test_room_can_collect_fee
  #   old_karaoke_money = @karaoke.money
  #   @room1.add_guest(@guest4)
  #   assert_equal(true, old_karaoke_money < @karaoke.money )
  # end




end