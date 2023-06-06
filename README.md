# Ruby-DisplayImage
Ruby语言显示路径图片
require 'chunky_png'：导入chunky_png库，用于处理PNG图像。
def display_image(file_path)：定义一个名为display_image的方法，接受一个参数file_path。
image = ChunkyPNG::Image.from_file(file_path)：使用ChunkyPNG::Image.from_file方法从文件路径读取图像，并将其赋值给image变量。
width = image.width：获取图像的宽度，并将其赋值给width变量。
height = image.height：获取图像的高度，并将其赋值给height变量。
(0..height - 1).each do |y|：迭代图像的每一行，使用y作为当前行的索引。
(0..width - 1).each do |x|：迭代图像的每一列，使用x作为当前列的索引。
pixel = image[x, y]：获取位于当前行和列的像素值，并将其赋值给pixel变量。
red = ChunkyPNG::Color.r(pixel)：从像素值中提取红色通道的值，并将其赋值给red变量。
green = ChunkyPNG::Color.g(pixel)：从像素值中提取绿色通道的值，并将其赋值给green变量。
blue = ChunkyPNG::Color.b(pixel)：从像素值中提取蓝色通道的值，并将其赋值给blue变量。
print_pixel(red, green, blue)：调用print_pixel方法，传递红、绿、蓝通道的值作为参数，打印相应的像素。
puts：在每一行像素打印完后，换行。
end：结束内部迭代。
end：结束外部迭代。
def print_pixel(red, green, blue)：定义一个名为print_pixel的方法，接受红、绿、蓝通道的值作为参数。
pixel = "\e[48;2;#{red};#{green};#{blue}m \e[0m"：构建一个控制台上带有指定RGB颜色的像素字符。
print pixel：打印像素字符。
gem install chunky_png
安装chunky_png库来处理PNG图像
