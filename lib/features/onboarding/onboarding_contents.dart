import 'package:best_heating/product/constants/image/image_constatns.dart';

import '../../product/constants/strings/project_string.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: OnBoardingString.head1,
    image: ImageConstants.instance.onBoardingImage1,
    desc: OnBoardingString.subhead1,
  ),
  OnboardingContents(
      title: OnBoardingString.head2,
      image: ImageConstants.instance.onBoardingImage2,
      desc: OnBoardingString.subhead2),
  OnboardingContents(
    title: OnBoardingString.head3,
    image: ImageConstants.instance.onBoardingImage3,
    desc: OnBoardingString.subhead3,
  ),
];
