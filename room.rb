

class Room
  attr_reader :name, :guests_limit, :fee
  attr_accessor :guests, :songs, :money
  def initialize(name, guests_limit, fee)
    @name = name
    @guests = []
    @songs = []
    @guests_limit = guests_limit
    @fee = fee
    @money = 0
  end

  def add_guest(guest)
    if @guests.length != @guests_limit && !@guests.include?(guest)
      if guest.money > @fee
        guest.money -= @fee
        @money += @fee
        @guests << guest
      else
        return "Sorry, you really need to pay the fee"
      end
    else
      return "Sorry, room is full"
    end
  end

  def remove_guest(guest)
    @guests.delete(guest)
    return  "Guest: #{guest.name} has been removed"
  end

  def add_song(song)

    @songs << song if !@songs.include?(song)
    return "#{song.name} by #{song.artist}, has been added"
  end

  def remove_song(song)
    @songs.delete(song)
    return "#{song.name} by #{song.artist}, has been deleted"
  end



end