## SPECIAL REQUEST FOR FEEDBACK
# In the code below, I refer to my "patrons" instance variable
# repeatedly. I thought I needed to use @patrons, but after removing
# the @ symbol and running my tests, they still all worked.
# Is this because patrons is in my accessor, and if that's the case,
# is it better practice to use or not use the @ symbol when referring
# to an instance variable?


class Venue
  attr_reader :name,
              :capacity,
              :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    patrons << patron
  end

  def yell_at_patrons
    patrons.map do |patron|
      patron.upcase
    end
  end

  def over_capacity?
    if patrons.count > 4
      true
    else
      false
    end
  end

  def kick_out
    until patrons.count < 5
      patrons.shift
    end
  end

end
