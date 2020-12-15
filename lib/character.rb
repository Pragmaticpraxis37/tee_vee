class Character
  attr_reader :name,
              :actor,
              :salary

  def initialize(information)
    @information = information
    @name = information[:name]
    @actor = information[:actor]
    @salary = information[:salary]
  end

end
