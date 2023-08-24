import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../constant/colors.dart';
import '../../../constant/image_strings.dart';
import '../../../constant/text_strings.dart';
import '../models/on_boarding_model.dart';
import '../screens/on_boarding/on_boarding_last_page.dart';
import '../screens/on_boarding/on_boarding_page.dart';

class OnBoardingController extends GetxController {
  final liquidController = LiquidController();
  RxInt currentPage = 0.obs;

  var isLastPage = true;
  changePageStatus() {
    if (currentPage.value < 3) {
      isLastPage = false;
    } else {
      isLastPage = true;
    }
    update();
  }

  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
      title: tOnBoardingTitle1,
      // subtitle: tOnBoardingSubTitle1,
      image: tOnBoardingPageImage1,
      // counterText: tOnBoardingCounter1,
      bgColor: tOnBoardingBgColor,
    )),
    OnBoardingPageWidget(
        model: OnBoardingModel(
      title: tOnBoardingTitle2,
      // subtitle: tOnBoardingSubTitle2,
      image: tOnBoardingPageImage2,
      // counterText: tOnBoardingCounter2,
      bgColor: tOnBoardingBgColor,
    )),
    OnBoardingLastPageWidget(
        model: OnBoardingModel(
      title: "",
      // subtitle: tOnBoardingSubTitle3,
      image: tOnBoardingPageImage3,
      // counterText: tOnBoardingCounter3,
      bgColor: tOnBoardingBgColor,
    ))
  ];

  onPageChangedCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
    // print(currentPage.value);
    update();
  }

  onSkip() => liquidController.animateToPage(
      page: liquidController.currentPage + 1 > 3 - 1
          ? 0
          : liquidController.currentPage + 1);

  onSkipPrevious() => liquidController.animateToPage(
      page: liquidController.currentPage - 1 > 3 - 1
          ? 0
          : liquidController.currentPage - 1);

  animateToNextSlide() {
    int nextPage = liquidController.currentPage + 1;
    liquidController.animateToPage(page: nextPage);
  }
}
