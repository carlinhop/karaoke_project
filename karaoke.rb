class Karaoke
  attr_reader :name
  attr_accessor :rooms, :money
  def initialize(name)
    @name = name
    @rooms = []
    
    @money = 0 
  end

  def add_room(room)
    if (@rooms.length)
      @rooms << room 
      return "Room: #{@rooms.last.name} has been added"
    end
  end

  def remove_room(room)
    @rooms.delete(room)
    return @rooms
  end




end