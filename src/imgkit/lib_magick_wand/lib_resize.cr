module ImgKit
  lib LibMagickWand
    fun MagickAdaptiveResizeImage(
      MagickWand*, columns : LibC::SizeT, rows : LibC::SizeT
    ) : MagickBooleanType
    fun MagickInterpolativeResizeImage(
      MagickWand*, columns : LibC::SizeT, rows : LibC::SizeT, interpolate : PixelInterpolateMethod
    ) : MagickBooleanType
    fun MagickResizeImage(
      MagickWand*, columns : LibC::SizeT, rows : LibC::SizeT, filter : FilterTypes
    ) : MagickBooleanType
  end
end
