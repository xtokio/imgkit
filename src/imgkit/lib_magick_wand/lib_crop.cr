module ImgKit
  lib LibMagickWand
    fun MagickCropImage(
      MagickWand*, width : LibC::SizeT, height : LibC::SizeT, x : LibC::SSizeT, y : LibC::SSizeT
    ) : MagickBooleanType
  end
end
