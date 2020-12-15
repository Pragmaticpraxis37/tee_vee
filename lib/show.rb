class Show
  attr_reader :name,
              :creator,
              :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.reduce(0) do |collector, character|
      collector +  character.salary
    end
  end

  def highest_paid_actor
    salary = 0
    highest = ""

    characters.each do |character|
      if character.salary > salary
        salary = character.salary
        highest = character.actor
      end
    end
    highest
  end

  def actors
    characters.map do |character|
      character.actor
    end.reverse 
  end
end
