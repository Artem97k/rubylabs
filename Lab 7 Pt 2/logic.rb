# class Rectangle
class Rect
  def initialize(x, y)
    @x = x
    @y = y
  end

  def square?
    (@x == @y)
  end

  def show
    puts @x
    puts @y
  end
end

# class Parallelepiped
class Parr < Rect
  def initialize(x, y, z)
    super(x, y)
    @z = z
  end

  def show
    puts @x
    puts @y
    puts @z
  end

  def lenth
    @x
  end

  def width
    @y
  end

  def height
    @z
  end

  def volume
    @x * @y * @z
  end
end
