class Car
  # attr_reader :make,
  #             :model,
  #             :color
  # attr_writer :color,
  #             :make,
  #             :model

  attr_accessor :make,
                :model,
                :color

  def initialize(make, model, color)
    @make = make
    @model = model
    @color = color
  end

  # def make
  #   @make
  # end

  # def update_color(new_color)
  #   @color = new_color
  # end
end

car1 = Car.new("Ford", "F150", "pink")

p car1.make
p car1.model
p car1.color
# p car1.update_color("brown")
p car1.color = "brown"
p car1.make = "Honda"
