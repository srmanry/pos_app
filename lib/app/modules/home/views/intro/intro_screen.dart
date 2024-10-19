import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/intro/intro_data.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/login&reg/reg_login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntoScreen extends StatefulWidget {
  IntoScreen({super.key});

  @override
  State<IntoScreen> createState() => _IntoScreenState();
}

class _IntoScreenState extends State<IntoScreen> {
  PageController pagcontroller = PageController();
  var skiptextstyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Colors.green);
  bool lastpage = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              itemCount: introtitle.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(introimage[index]),
                      // Image(image: AssetImage(introimage[index])),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        introtitle[index],
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(introbody[index],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))
                    ],
                  ),
                );
              },
              controller: pagcontroller,
              onPageChanged: (value) {
                setState(() {
                  lastpage = (value == 2);
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SKIP",
                      style: skiptextstyle,
                    ),
                    SmoothPageIndicator(
                        // textDirection: ,
                        controller: pagcontroller, // PageController
                        count: 3,
                        effect: const WormEffect(
                            dotColor: Colors.red,
                            activeDotColor:
                                Colors.green), // your preferred effect
                        onDotClicked: (index) {}),
                    lastpage
                        ? InkWell(
                            onTap: () {
                              // Get.to(() => RegLoginScreen());
                              Get.to(() => RegLoginScreen());
                            },
                            child: Text(
                              "Done",
                              style: skiptextstyle,
                            ),
                          )
                        : InkWell(
                            onTap: () {
                              pagcontroller.nextPage(
                                  duration: const Duration(
                                    milliseconds: 50,
                                  ),
                                  curve: Curves.bounceIn);
                            },
                            child: Text(
                              "Next",
                              style: skiptextstyle,
                            ),
                          )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
