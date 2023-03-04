import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui/screens/onBoarding/onBoarding_image_ui.dart';
import 'package:ui/utils/color.dart';
import 'package:ui/screens/widget/btn_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //pageview
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    if (index == 3) {
                      isLastPage = true;
                    } else {
                      isLastPage = false;
                    }
                  });
                },
                children: const [
                  OnBoardingImage(
                    image: 'assets/images/onboarding_3.jpg',
                  ),
                  OnBoardingImage(
                    image: 'assets/images/onboarding_3.jpg',
                  ),
                  OnBoardingImage(
                    image: 'assets/images/onboarding_3.jpg',
                  ),
                  OnBoardingImage(
                    image: 'assets/images/onboarding_3.jpg',
                  ),
                ],
              ),
            ),
            //pageview end
            Container(
              decoration: const BoxDecoration(
                color: whiteColor,
                border: Border(
                  top: BorderSide(
                    color: gray200,
                    width: 1,
                  ),
                ),
              ),
              padding: const EdgeInsets.only(
                  top: 24, left: 26, right: 16, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is Loream Ipsum?',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Loream Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 32,
                  ),

                  //onboarding page indicator
                  SmoothPageIndicator(
                    controller: controller,
                    count: 4,
                    effect: const ExpandingDotsEffect(
                        spacing: 8,
                        dotHeight: 8.32,
                        dotWidth: 8.32,
                        dotColor: textSecondary,
                        activeDotColor: mainColor,
                        expansionFactor: 3),
                    onDotClicked: (index) => controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    ),
                  ),

                  //page indicator end
                  const SizedBox(
                    height: 32,
                  ),
                  isLastPage
                      ? Btn(
                          btnFunctin: () {
                            controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          bgColor: mainColor,
                          title: 'Back',
                        )
                      : Btn(
                          btnFunctin: () {
                            controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          bgColor: mainColor,
                          title: 'Next',
                        ),
                  const SizedBox(
                    height: 24,
                  ),

                  //skip btn
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'signin_screen');
                      },
                      child: Text(
                        'Skip',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w600,
                              color: mainColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
