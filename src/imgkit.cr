require "./imgkit/**"

module ImgKit
  VERSION = "0.1.0-dev"

  extend self

  def terminus
    LibMagickWand.MagickWandTerminus
  end

  MAGICK_TRUE = LibMagickWand::MagickBooleanType::MagickTrue

  class Image
    property path : String

    @wand = uninitialized LibMagickWand::MagickWand*
    getter

    getter destroy = false
    getter width, height

    def initialize(@path)
      LibMagickWand.MagickWandGenesis
      @wand = LibMagickWand.NewMagickWand

      status = LibMagickWand.MagickReadImage(@wand, @path)

      wrapper_exception status do |_type, description|
        ImgException.new(description)
      end

      @width = LibMagickWand.MagickGetImageWidth(@wand)
      @height = LibMagickWand.MagickGetImageHeight(@wand)
    end

    def info
      {:path => @path, :width => @width, :height => @height}
    end

    def resize(width = 0, height = 0, filter = LibMagickWand::FilterTypes::Lanczos2Filter)
      # width : height
      ratio = @width.fdiv @height
      if width == 0
        width = (height * ratio).to_i
      elsif height == 0
        height = (width / ratio).to_i
      end

      status = LibMagickWand.MagickResizeImage(@wand, width, height, filter)

      wrapper_exception status do |_type, description|
        ResizeException.new(description)
      end
    end

    def blur(sigma, radius = 0.0)
      status = LibMagickWand.MagickGaussianBlurImage(@wand, radius, sigma)

      wrapper_exception status do |_type, description|
        BlurException.new(description)
      end
    end

    def crop(width = 0, height = 0, x = 0, y = 0)
      status = LibMagickWand.MagickCropImage(@wand, width, height, x, y)

      wrapper_exception status do |_type, description|
        CropException.new(description)
      end
    end

    def save(path)
      status = LibMagickWand.MagickWriteImages(@wand, path, LibMagickWand::MagickBooleanType::MagickTrue)

      wrapper_exception status do |_type, description|
        ImgException.new(description)
      end
    end

    def finish
      LibMagickWand.DestroyMagickWand(@wand)
      destroy = true
    end

    def destroy?
      destroy
    end

    def wrapper_exception(status)
      if status != MAGICK_TRUE
        description = LibMagickWand.MagickGetException(@wand, out severity)
        ex = yield severity.value, String.new(description)
        LibMagickWand.MagickRelinquishMemory(description)
        finish
        raise ex
      end
    end
  end
end