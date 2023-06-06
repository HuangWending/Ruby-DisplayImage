require 'chunky_png'

def display_image(file_path)
  image = ChunkyPNG::Image.from_file(file_path)
  width = image.width
  height = image.height

  (0..height - 1).each do |y|
    (0..width - 1).each do |x|
      pixel = image[x, y]
      red = ChunkyPNG::Color.r(pixel)
      green = ChunkyPNG::Color.g(pixel)
      blue = ChunkyPNG::Color.b(pixel)
      print_pixel(red, green, blue)
    end
    puts
  end
end

def print_pixel(red, green, blue)
  pixel = "\e[48;2;#{red};#{green};#{blue}m  \e[0m"
  print pixel
end

file_path = "your/image/file/path.png"
display_image(file_path)
