// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
// import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:wishway_rider/theme/custom_widgets.dart';
import 'package:wishway_rider/theme/theme_helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Widget builder(BuildContext context) {
    return const HomePage();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "assets/images/onboarding.png",
              width: 125.32,
              height: 27,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TrackYourPackageCard(),
          const SizedBox(height: 16),
          const PaymentAndShareLocationW(),
          const SizedBox(height: 16),
          const SendTrackReceive(),
        ],
      ),
    ));
  }
}

class TrackYourPackageCard extends StatelessWidget {
  const TrackYourPackageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 189,
      decoration: BoxDecoration(
          color: const Color(0xff6D7592).withOpacity(0.5),
          image: const DecorationImage(
              image: AssetImage("assets/images/Frame_51083.png"),
              fit: BoxFit.fill),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Track your package",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 24,
                color: Color(0xffffffff),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Please enter your tracking number",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 12,
                color: Color(0xff929292),
              ),
            ),
            SizedBox(height: 20),
            SearchBarWidget()
          ],
        ),
      ),
    );
  }
}

// search bar

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        // border bravel
        borderRadius: const BorderRadius.horizontal(
          right: Radius.circular(30),
          left: Radius.circular(30),
        ),
      ),
      width: 329,
      height: 64,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0), // Adjust the radius as needed
          child: Row(
            children: [
              const Expanded(
                child: SearchBar(
                  hintText: "Tracking number",
                  shape: MaterialStatePropertyAll(BeveledRectangleBorder()),
                  textStyle: MaterialStatePropertyAll(
                      TextStyle(color: Color(0xff6D7592))),
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  shadowColor: MaterialStatePropertyAll(Colors.transparent),
                  surfaceTintColor:
                      MaterialStatePropertyAll(Colors.transparent),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                ),
                child: IconButton(
                  onPressed: () {
                    // Define the action when the search icon is pressed
                  },
                  icon: const Icon(
                    Icons.search,
                  ),
                  color: Colors.white,
                  iconSize: 40,
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff2873FF)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentAndShareLocationW extends StatelessWidget {
  const PaymentAndShareLocationW({super.key});

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
            child: PaymentContainer(
          svgImage: "assets/images/Group36913.svg",
          svgTitle: "Make Payment",
        )),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: PaymentContainer(
          svgImage: "assets/images/Group36915.svg",
          svgTitle: "Share Location",
        )),
      ],
    );
  }
}

class PaymentContainer extends StatelessWidget {
  Icon? icon;
  String? title;
  String svgImage;
  String svgTitle;
  PaymentContainer(
      {super.key,
      this.title,
      this.icon,
      required this.svgImage,
      required this.svgTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 116,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Frame_51083.png"),
            fit: BoxFit.fill),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 8),
            CIconWithCircleContainer(svgImage: svgImage),
            const SizedBox(height: 15),
            CTextStyles(
              title: svgTitle,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class SendTrackReceive extends StatelessWidget {
  const SendTrackReceive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 367,
      height: 174,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Frame_51083.png"),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CTextStyles(title: "Send, Track & Receive", size: 20),
            const SizedBox(height: 34),
            CTextStyles(
              title: "Trust us for fast and safe delivery",
              size: 14,
              color: const Color(0xff2873FF),
            ),
            const SizedBox(height: 34),
            Row(
              children: [
                SizedBox(
                  width: 104,
                  height: 40,
                  child: FloatingActionButton(
                    heroTag: UniqueKey(),
                    onPressed: () {
                      // _showLoginModal(context)
                      Navigator.of(context).pushNamed("/login");
                    },
                    backgroundColor: const Color(0xff2873FF),
                    shape: const BeveledRectangleBorder(),
                    child: CTextStyles(
                      title: "Login",
                      size: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 104,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: const Color(0xff2873FF),
                  )),
                  child: FloatingActionButton(
                    heroTag: UniqueKey(),
                    onPressed: () => _showLoginModal(context),
                    shape: const BeveledRectangleBorder(),
                    child: CTextStyles(
                      title: "Sign up",
                      size: 14,
                      color: const Color(0xff2873FF),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showLoginModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: 428,
          height: 435,
          decoration: BoxDecoration(
            color: PrimaryColors().blueGray900,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cButtonBack(Colors.white, UniqueKey(), () {}, 24),
                CTextStyles(title: "Join Wishway as", size: 24),
                cRadioListTile(
                  groupvalue: 1,
                  value: 1,
                  title: CTextStyles(title: "A Business", size: 20),
                ),
                cRadioListTile(
                  groupvalue: 1,
                  value: 2,
                  title: CTextStyles(title: "An Individual", size: 20),
                ),
              ],
            ),
          ),
        );
      },
    );
    // _showLoginModal
  }
}

// test widget

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("data"),
    );
  }
}
