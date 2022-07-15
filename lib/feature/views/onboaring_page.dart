import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop_app_design/core/extensions/context_extensions.dart';

import '../../core/constants/application_colors.dart';
import 'home_page.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to NarkHouse, Let’s shop!",
      "image": "https://assets8.lottiefiles.com/packages/lf20_jei6otjn.json"
    },
    {
      "text": "Fast and Easy Ordering",
      "image": "https://assets8.lottiefiles.com/packages/lf20_foww0tqq.json"
    },
    {
      "text": "One Day Delivery with Smile",
      "image": "https://assets8.lottiefiles.com/private_files/lf30_9kdbftpx.json"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ApplicationColors.bgColor,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                      title: "NarkHouse",
                      content: splashData[index]["text"] ?? "",
                      image: splashData[index]["image"] ?? "",
                    ),
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        splashDot(index: 0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: splashDot(index: 1),
                        ),
                        splashDot(index: 2),
                      ]),
                      SizedBox(
                        height: context.highValue / 2,
                        width: context.highValue * 3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                          },
                          style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                          child: const Text("Continue"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  AnimatedContainer splashDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 6,
      width: currentPage == index ? 12 : 6,
      decoration: BoxDecoration(
          color: currentPage == index
              ? ApplicationColors.accentColor
              : const Color.fromARGB(255, 142, 142, 142),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.title,
    required this.content,
    required this.image,
  }) : super(key: key);

  final String title;
  final String content;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        children: [
          const Spacer(),
          Text(title, style: context.textTheme.headline3),
          Text(
            content,
            style: context.textTheme.headline6,
            textAlign: TextAlign.center,
          ),
          const Spacer(
            flex: 2,
          ),
          Lottie.network(image, height: context.height / 3)
        ],
      ),
    );
  }
}
