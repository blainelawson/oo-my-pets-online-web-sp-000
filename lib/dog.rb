class Dog
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
  end

  def mood=(mood)
    @mood = mood
  end
end
