module ImgKit
  class ImgException < Exception
  end

  class ResizeException < ImgException
  end

  class BlurException < ImgException
  end

  class CropException < ImgException
  end
end
