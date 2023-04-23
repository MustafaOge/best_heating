class ImageConstants {
  ImageConstants._init();
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  String get onBoardingImage1 => toPng('onBoardingImage1');
  String get onBoardingImage2 => toPng('onBoardingImage2');
  String get onBoardingImage3 => toPng('onBoardingImage3');
  String get splash => toPng('splash');
  String get heaterRadient => toPng('heaterRadient');

  String toPng(String name) => 'assets/images/$name.png';
}
//ImageConstants.instance.onBoardingImage1


