# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# # it should have a method called "say" that returns whatever string is
# # passed in, with "*~*" at the beginning and end of the string
#
class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say
    p "*~* My name is #{@name}!*~*"
  end
end

unicorn1 = Unicorn.new("Carl")
unicorn1.say
p unicorn1


#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

  def drink
    @thirsty = false
  end
end

vamp1 = Vampire.new("River")
vamp1.drink
p vamp1

vamp2 = Vampire.new("Wicklow", "cat")
p vamp2


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  def initialize(name, rider, color, is_hungry = true)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = is_hungry
    @meals = 0
  end

  # def eat(meals)
  #   if meals >= 4
  #     @is_hungry = false
  #   end
  # end

  def eat
    if @meals == 3
      @is_hungry = false
      @meals += 1
    else
      @meals += 1
    end
  end
end

# dragon1 = Dragon.new("Bodi", "Dean", "Black")
# dragon1.eat(5)
# p dragon1
#
# dragon2 = Dragon.new("Florence", "Benji", "Silver")
# dragon2.eat(3)
# p dragon2
#
# dragon3 = Dragon.new("Kelly", "Brock", "Purple")
# p dragon3

dragon4 = Dragon.new("Tyler", "Kelsie", "Red")
# p dragon4
# dragon4.eat
# p dragon4
# dragon4.eat
# p dragon4
# dragon4.eat
# p dragon4
# dragon4.eat
# p dragon4
# dragon4.eat
# p dragon4
p dragon4
4.times do
  dragon4.eat
end
p dragon4


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  def initialize(name, disposition, age = 0, is_adult = false, is_old = false, has_ring = false)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    @is_old = false
    @has_ring = name == "Frodo" ? true : false
  end

  def celebrate_birthday
    if @age == 32
      @is_adult = true
      @age += 1
    elsif @age == 100
      @is_adult = true
      @is_old = true
      @age += 1
    else
      @age += 1
    end
  end

  # def ring
  #   if @name == "Frodo"
  #     @has_ring = true
  #   else
  #     @has_ring = false
  #   end
  # end
end

hobbit4 = Hobbit.new("Frodo", "cool")
34.times do
  hobbit4.celebrate_birthday
end
hobbit5 = Hobbit.new("Sam", "cool")
101.times do
  hobbit5.celebrate_birthday
end
hobbit6 = Hobbit.new("Frodo", "excited")
107.times do
  hobbit6.celebrate_birthday
end
p hobbit4
p hobbit5
p hobbit6

hobbit1 = Hobbit.new("Sam", "nice")
8.times do
  hobbit1.celebrate_birthday
end
p hobbit1
#
# hobbit2 = Hobbit.new("Bodi", "mean")
# 12.times do
#   hobbit2.celebrate_birthday
# end
# hobbit2.ring
# p hobbit2
#
# hobbit3 = Hobbit.new("Frodo", "rude")
# 101.times do
#   hobbit3.celebrate_birthday
# end
# hobbit3.ring
# p hobbit3
