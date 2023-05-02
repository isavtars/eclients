import 'package:flutter/material.dart';

import '../model/onboard.dart';
import '../styles/appstyle.dart';

import '../styles/sizeconfig.dart';

class OnBoardinglist extends StatefulWidget {
  const OnBoardinglist({super.key});

  @override
  State<OnBoardinglist> createState() => _OnBoardinglistState();
}

class _OnBoardinglistState extends State<OnBoardinglist> {
  PageController pagecontroller = PageController();

  @override
  void initState() {
    super.initState();
    pagecontroller = PageController(
      initialPage: 0,
      // keepPage: true,
    );
  }

  @override
  void dispose() {
    pagecontroller.dispose();
    super.dispose();
  }

  int? pageIndex = 0;
  final List<OnBoard> demoData = [
    OnBoard(
      image: "assets/images/1a.png",
      title: "Encrypted And Reliable Email Client Service",
      description:
          "Our products are open source & they have been independently audited by thousands of experts around the world.",
    ),
    OnBoard(
      image: "assets/images/1b.png",
      title: "Encrypted And Reliable Email Client Service",
      description:
          "Our products are open source & they have been independently audited by thousands of experts around the world.",
    ),
    OnBoard(
      image: "assets/images/1c.png",
      title: "Encrypted And Reliable Email Client Service",
      description:
          "Our products are open source & they have been independently audited by thousands of experts around the world.",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: pagecontroller,
                physics: const BouncingScrollPhysics(),
                itemCount: demoData.length,
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });
                },
                itemBuilder: ((context, index) {
                  return Column(children: [
                    const Spacer(),
                    Image.asset(
                      demoData[index].image,
                      height: 250,
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Column(children: [
                        Text(
                          demoData[index].title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: kJakartaHeading4.copyWith(
                              color: kDarkColor,
                              fontSize:
                                  SizeConfig.blockSizeHorizontal! * kHeading2),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          demoData[index].description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: kJakartaBodyMedium.copyWith(
                              color: kParagraphColor,
                              fontSize:
                                  SizeConfig.blockSizeHorizontal! * kHeading4),
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                                3,
                                (index) => Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: dotIndectors(index == pageIndex),
                                    ))
                          ]),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                pageIndex == demoData.length - 1
                                    ? Navigator.pushNamed(context, "/homesce")
                                    : pagecontroller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 800),
                                        curve: Curves.easeIn);
                              },
                              child: Container(
                                height: 50,
                                width: 157,
                                decoration: BoxDecoration(
                                    border: Border.all(color: kParagraphColor),
                                    color: kBackgroundColor,
                                    borderRadius: BorderRadius.circular(16.0)),
                                child: Center(
                                    child: Text(
                                  "Skip",
                                  style: kJakartaBodyRegular.copyWith(
                                      color: kDarkColor,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *
                                              kBody1),
                                )),
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/homesce");
                              },
                              child: Container(
                                height: 50,
                                width: 157,
                                decoration: BoxDecoration(
                                    color: kSecondaryColor,
                                    borderRadius: BorderRadius.circular(16.0)),
                                child: Center(
                                    child: Text(
                                  "Get Started",
                                  style: kJakartaBodyRegular.copyWith(
                                      color: kWhiteColor,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *
                                              kBody1),
                                )),
                              ),
                            )
                          ]),
                    )
                  ]);
                })),
          ),
        ],
      ),
    );
  }

  //
  AnimatedContainer dotIndectors(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 200),
        child: Container(
          decoration: BoxDecoration(
              color: !isActive ? Colors.black : Colors.red,
              borderRadius: BorderRadius.circular(20.0)),
          height: 8,
          width: isActive ? 30 : 8,
        ),
      ),
    );
  }
}
