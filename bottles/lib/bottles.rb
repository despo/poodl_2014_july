# Feel free to delete the instructions once you get going
puts instructions(__FILE__)

class Bottles

  def verse(num)
    if num == 0
%{No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
}
    elsif num == 1
%Q{1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
}
    elsif num != 2
    %Q{#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num-1} bottles of beer on the wall.
}
    else
    %Q{#{num} bottles of beer on the wall, #{num} bottles of beer.
Take one down and pass it around, #{num-1} bottle of beer on the wall.
}
    end
  end

end
