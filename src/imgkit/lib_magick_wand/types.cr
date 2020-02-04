module ImgKit
  lib LibMagickWand
    MAGICKPATHEXTENT = 4096

    struct MagickWand
      id : LibC::SizeT
      name : LibC::Char[MAGICKPATHEXTENT]
      signature : LibC::SizeT
    end

    enum MagickBooleanType
      MagickFalse
      MagickTrue
    end

    enum FilterTypes
      UndefinedFilter
      PointFilter
      BoxFilter
      TriangleFilter
      HermiteFilter
      HanningFilter
      HammingFilter
      BlackmanFilter
      GaussianFilter
      QuadraticFilter
      CubicFilter
      CatromFilter
      MitchellFilter
      JincFilter
      SincFilter
      SincFastFilter
      KaiserFilter
      WelshFilter
      ParzenFilter
      BohmanFilter
      BartlettFilter
      LagrangeFilter
      LanczosFilter
      LanczosSharpFilter
      Lanczos2Filter
      Lanczos2SharpFilter
      RobidouxFilter
      RobidouxSharpFilter
      CosineFilter
      SplineFilter
      LanczosRadiusFilter
      SentinelFilter
    end

    enum PixelInterpolateMethod
      UndefinedInterpolatePixel
      AverageInterpolatePixel
      Average9InterpolatePixel
      Average16InterpolatePixel
      BackgroundInterpolatePixel
      BilinearInterpolatePixel
      BlendInterpolatePixel
      CatromInterpolatePixel
      IntegerInterpolatePixel
      MeshInterpolatePixel
      NearestInterpolatePixel
      SplineInterpolatePixel
    end

    enum ExceptionType
      UndefinedException
      WarningException          = 300
      ResourceLimitWarning      = 300
      TypeWarning               = 305
      OptionWarning             = 310
      DelegateWarning           = 315
      MissingDelegateWarning    = 320
      CorruptImageWarning       = 325
      FileOpenWarning           = 330
      BlobWarning               = 335
      StreamWarning             = 340
      CacheWarning              = 345
      CoderWarning              = 350
      FilterWarning             = 352
      ModuleWarning             = 355
      DrawWarning               = 360
      ImageWarning              = 365
      WandWarning               = 370
      RandomWarning             = 375
      XServerWarning            = 380
      MonitorWarning            = 385
      RegistryWarning           = 390
      ConfigureWarning          = 395
      PolicyWarning             = 399
      ErrorException            = 400
      ResourceLimitError        = 400
      TypeError                 = 405
      OptionError               = 410
      DelegateError             = 415
      MissingDelegateError      = 420
      CorruptImageError         = 425
      FileOpenError             = 430
      BlobError                 = 435
      StreamError               = 440
      CacheError                = 445
      CoderError                = 450
      FilterError               = 452
      ModuleError               = 455
      DrawError                 = 460
      ImageError                = 465
      WandError                 = 470
      RandomError               = 475
      XServerError              = 480
      MonitorError              = 485
      RegistryError             = 490
      ConfigureError            = 495
      PolicyError               = 499
      FatalErrorException       = 700
      ResourceLimitFatalError   = 700
      TypeFatalError            = 705
      OptionFatalError          = 710
      DelegateFatalError        = 715
      MissingDelegateFatalError = 720
      CorruptImageFatalError    = 725
      FileOpenFatalError        = 730
      BlobFatalError            = 735
      StreamFatalError          = 740
      CacheFatalError           = 745
      CoderFatalError           = 750
      FilterFatalError          = 752
      ModuleFatalError          = 755
      DrawFatalError            = 760
      ImageFatalError           = 765
      WandFatalError            = 770
      RandomFatalError          = 775
      XServerFatalError         = 780
      MonitorFatalError         = 785
      RegistryFatalError        = 790
      ConfigureFatalError       = 795
      PolicyFatalError          = 799
    end
  end
end
