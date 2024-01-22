import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:wishway_rider/core/utils/image_constant.dart';
import 'package:wishway_rider/theme/custom_widgets.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      SvgPicture.asset(ImageConstant.imgGroup36764,
                          width: 72, height: 72),
                      CTextStyles(
                        title: "Welcome to Wishway!",
                        size: 24,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      CTextStyles(
                        title: "We keep your data safe!",
                        size: 16,
                        color: Colors.white54,
                      ),
                    ],
                  ),
                ),
              ),

              const Divider(height: 90, color: Colors.transparent),
              // second container starts here
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      CTextStyles(title: "Login to continue", size: 20),
                      cFormField(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
