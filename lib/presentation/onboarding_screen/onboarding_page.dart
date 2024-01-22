import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:wishway_rider/core/app_export.dart';
import 'package:wishway_rider/presentation/onboarding_screen/bloc/onboarding_bloc.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

// state management
  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) =>
            OnboardingBloc(OnboardingState())..add(OnboardingInitialEvent()),
        child: const OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: OnBoardingAnimation(
        pages: [
          OnboardingPage1(),
          OnboardingPage2(),
          OnboardingPage3(),
          OnboardingPage4(),
        ],
        indicatorDotHeight: 7.0,
        indicatorDotWidth: 7.0,
        indicatorType: IndicatorType.expandingDots,
        indicatorPosition: IndicatorPosition.bottomCenter,
      ),
    );
  }
}

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary1,
      child: Padding(
        padding: const EdgeInsets.all(34),
        child: Container(
          child: Center(
            child: Image.asset(
              "assets/images/onboarding.png",
              width: 270,
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: AppDecoration.fillOnPrimary1,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            child: Align(
              widthFactor: 34,
              alignment: Alignment.topLeft,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 90),
                    Image.asset(
                      "assets/images/amico.png",
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      "Fast Delivery",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 40,
                          color: Color(0XFFFFFFFF)),
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      " Et, et risus, sem integer sit posuere lorem. Donec pharetra adipiscing ut fames at sociis.",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        color: Color(0XFF929292),
                        height: 1.9,
                      ),
                    ),
                    const SizedBox(height: 90),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // FloatingActionButton(
                        //   onPressed: null,
                        //   shape: CircleBorder(),
                        //   backgroundColor: Color(0xfff2873FF),
                        //   child: Image(
                        //     width: 32,
                        //     height: 32,
                        //     image: Svg('assets/images/img_arrow_left.svg'),
                        //   ),
                        // ),
                        FloatingActionButton(
                          onPressed: null,
                          shape: CircleBorder(),
                          backgroundColor: Color(0xfff2873FF),
                          child: Image(
                            width: 32,
                            height: 32,
                            image: Svg(
                                'assets/images/img_right_arrow_24_outline.svg'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: AppDecoration.fillOnPrimary1,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            child: Align(
              widthFactor: 34,
              alignment: Alignment.topLeft,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 90),
                    Image.asset(
                      "assets/images/cuate.png",
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      "Track Delivery",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35,
                          color: Color(0XFFFFFFFF)),
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      " Et, et risus, sem integer sit posuere lorem. Donec pharetra adipiscing ut fames at sociis.",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        color: Color(0XFF929292),
                        height: 1.9,
                      ),
                    ),
                    const SizedBox(height: 90),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton(
                          onPressed: null,
                          shape: CircleBorder(
                            side: BorderSide(
                                color: Colors.blue), // Set the border color
                          ),
                          backgroundColor: Colors.transparent,
                          child: Image(
                            width: 32,
                            height: 32,
                            image: Svg('assets/images/Outline.svg',
                                color: Colors.white),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: null,
                          shape: CircleBorder(),
                          backgroundColor: Color(0xfff2873FF),
                          child: Image(
                            width: 32,
                            height: 32,
                            image: Svg(
                                'assets/images/img_right_arrow_24_outline.svg'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OnboardingPage4 extends StatelessWidget {
  const OnboardingPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: AppDecoration.fillOnPrimary1,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            child: Align(
              widthFactor: 34,
              alignment: Alignment.topLeft,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 90),
                    Image.asset(
                      "assets/images/amico1.png",
                    ),
                    const SizedBox(height: 50),
                    const Text(
                      "Package Safety",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35,
                          color: Color(0XFFFFFFFF)),
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      " Et, et risus, sem integer sit posuere lorem. Donec pharetra adipiscing ut fames at sociis.",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        color: Color(0XFF929292),
                        height: 1.9,
                      ),
                    ),
                    const SizedBox(height: 90),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton(
                          key: UniqueKey(),
                          onPressed: null,
                          shape: const CircleBorder(
                            side: BorderSide(
                                color: Colors.blue), // Set the border color
                          ),
                          backgroundColor: Colors.transparent,
                          child: const Image(
                            width: 32,
                            height: 32,
                            image: Svg('assets/images/Outline.svg',
                                color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          key: UniqueKey(),
                          onPressed: () {
                            Navigator.of(context).pushNamed("/home");
                          },
                          child: Text(
                            "Continue",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
