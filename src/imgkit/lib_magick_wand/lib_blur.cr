module ImgKit
  lib LibMagickWand
    fun MagickAdaptiveBlurImage(
      MagickWand*, radius : LibC::Double, sigma : LibC::Double
    ) : MagickBooleanType
    fun MagickBlurImage(
      MagickWand*, radius : LibC::Double, sigma : LibC::Double
    ) : MagickBooleanType
    fun MagickGaussianBlurImage(
      MagickWand*, radius : LibC::Double, sigma : LibC::Double
    ) : MagickBooleanType
    fun MagickMotionBlurImage(
      MagickWand*, radius : LibC::Double, sigma : LibC::Double, angle : LibC::Double
    ) : MagickBooleanType
    fun MagickRotationalBlurImage(
      MagickWand*, angle : LibC::Double
    ) : MagickBooleanType
    fun MagickSelectiveBlurImage(
      MagickWand*, radius : LibC::Double, sigma : LibC::Double, threshold : LibC::Double
    ) : MagickBooleanType
  end
end
