# Feel free to delete the instructions once you get going
require './lib/bottle_number'
puts instructions(__FILE__)

class Bottles
  def song
    verses(99,0)
  end

  def verses(upper, lower)
    upper.downto(lower).map { |bottle_number| verse(bottle_number) }.join("\n")
  end

  def verse(current_bottle_number)
    bottle_number = BottleNumber.new(current_bottle_number)
    next_bottle_number = BottleNumber.new(bottle_number.next)

    "#{bottle_number.quantity.capitalize} #{bottle_number.container} of beer on the wall, #{bottle_number.quantity} #{bottle_number.container} of beer.\n#{bottle_number.action}, #{next_bottle_number.quantity} #{next_bottle_number.container} of beer on the wall.\n"

  end

end
