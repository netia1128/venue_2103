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
    @patrons << patron
  end

  def yell_at_patrons
    uppercased_patrons = []
    patrons.each do |patron|
      uppercased_patrons << patron.upcase
    end
    uppercased_patrons
  end

  def over_capacity?
    if patrons.count > 4
      true
    else
      false
    end
  end

end
