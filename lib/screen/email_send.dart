import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

import '../styles/appstyle.dart';
import '../styles/sizeconfig.dart';

class EmailSender extends StatelessWidget {
  const EmailSender({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: botombar(),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            //navcard
            Container(
              color: kBackgroundColor,
              padding: const EdgeInsets.only(
                  top: 54, left: 24.0, right: 24.0, bottom: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: kDark10Color,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: const Icon(
                        Icons.compress,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: kDark10Color,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons.send,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: kDark10Color,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: const Icon(
                            Icons.do_not_touch,
                          ),
                        )
                      ],
                    )
                  ]),
            ),
            const SizedBox(
              height: 25,
            ),
            //sendcard
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 24.0,
                right: 24.0,
                bottom: 10.0,
              ),
              decoration: const BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Column(children: [
                //first line
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "To :",
                            style: kJakartaBodyMedium.copyWith(
                                color: kDarkColor,
                                fontSize: SizeConfig.blockSizeHorizontal! *
                                    kHeading4),
                          ),
                          Container(
                            height: 30,
                            decoration: const BoxDecoration(
                                color: kDark10Color,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              children: [
                                const SvgIcon(
                                  "assets/icons/android.svg",
                                  color: Colors.red,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "T bibek",
                                  style: kJakartaBodyMedium.copyWith(
                                      color: kDarkColor,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *
                                              kHeading4),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            decoration: const BoxDecoration(
                                color: kDark10Color,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Row(
                              children: [
                                const SvgIcon(
                                  "assets/icons/android.svg",
                                  color: Colors.red,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "U bibek",
                                  style: kJakartaBodyMedium.copyWith(
                                      color: kDarkColor,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *
                                              kHeading4),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        CupertinoIcons.chevron_down,
                        size: SizeConfig.blockSizeHorizontal! * kHeading3,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "From:hello@designmonks.com",
                        style: kJakartaBodyMedium.copyWith(
                            color: kDarkColor,
                            fontSize:
                                SizeConfig.blockSizeHorizontal! * kHeading4),
                      ),
                      Icon(
                        CupertinoIcons.chevron_down,
                        size: SizeConfig.blockSizeHorizontal! * kHeading3,
                      )
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subject:Work Inquiry from Axel E",
                        style: kJakartaBodyMedium.copyWith(
                            color: kDarkColor,
                            fontSize:
                                SizeConfig.blockSizeHorizontal! * kHeading4),
                      ),
                    ],
                  ),
                ),
              ]),
            )
            //thirdline

            ,
            const SizedBox(
              height: 20,
            ),

            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 24.0,
                right: 24.0,
                bottom: 10.0,
              ),
              color: kBackgroundColor,
              child: Column(children: [
                Text("Helooo",
                    style: kJakartaBodyMedium.copyWith(
                        color: kDarkColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * kHeading4)),
                Text(
                    "That works fine, we are in no rush. Let me know when you have free time and we can have a meeting.",
                    style: kJakartaBodyMedium.copyWith(
                        color: kDarkColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * kHeading4)),
                Text(
                    "Quick question: how does a redesign usually work? You provide with the designs and once everything is OK we have to get someone to make the changes to the code? Or do you also provide the code? And if not can you recommend someone who can?",
                    style: kJakartaBodyMedium.copyWith(
                        color: kDarkColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * kHeading4)),
                Text(
                    "Quick question: how does a redesign usually work? You provide with the designs and once everything is OK we have to get someone to make the changes to the code? Or do you also provide the code? And if not can you recommend someone who can?",
                    style: kJakartaBodyMedium.copyWith(
                        color: kDarkColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * kHeading4)),
                Text("Thanks and regards Design Monks",
                    style: kJakartaBodyMedium.copyWith(
                        color: kDarkColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * kHeading4)),
                Text("Thankyou Dear T bibek",
                    style: kJakartaBodyMedium.copyWith(
                        color: kDarkColor,
                        fontSize: SizeConfig.blockSizeHorizontal! * kHeading4))
              ]),
            )
          ])),
    );
  }

  Container botombar() {
    return Container(
      color: Colors.transparent,
      padding:
          const EdgeInsets.only(top: 10, left: 12.0, right: 12.0, bottom: 10.0),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: kDark10Color, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: kDark10Color, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Proposal.docx"), Text("456 kb")],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: kDark10Color, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("upffdddss.pdf"), Text("456 kb")],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
