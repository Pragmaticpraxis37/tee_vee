class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows.push(show)
  end

  def main_characters
    main = []
    shows.each do |show|
      show.characters.each do |character|
        if character.name == character.name.upcase && character.salary > 500_000
          main.push(character)
        end
      end
    end
    main
  end

  def actors_by_show
    shows.reduce({}) do |collector, show|
      require "pry"; binding.pry
      collector[show]
      show.characters.each do |character|
        collector[show] = character
      end
    end
  end
end
