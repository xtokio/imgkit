# ImgKit

Image Toolkit for Crystal based on MagicWand binding from ImageMagick

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     imgkit:
       github: xtokio/imgkit
   ```

2. Run `shards install`

## Usage

```crystal
require "imgkit"

# Info
img = ImgKit::Image.new("demo.png")
info = img.info
puts "Path: #{info[:path]} Width: #{info[:width]}px Height: #{info[:height]}px"
img.finish

# Resize
img = ImgKit::Image.new("demo.png")
img.resize(width: 301)
img.save("output/resize.png")
img.finish

# Blur
img = ImgKit::Image.new("demo.png")
img.blur(5.0)
img.save("output/blur.png")
img.finish

# Crop
img = ImgKit::Image.new("demo.png")
img.crop(width: 120, height: 200, x: 50, y: 50)
img.save("output/crop.png")
img.finish

# Combin
img = ImgKit::Image.new("demo.png")
img.resize(width: 410)
img.blur(5.0)
img.crop(width: 200)
img.save("output/combin.png")
img.finish
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/xtokio/imgkit/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Hentioe](https://github.com/Hentioe) - creator
- [Luis Gomez](https://github.com/xtokio) - maintainer
