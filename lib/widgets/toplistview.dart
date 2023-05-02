
import 'package:flutter/material.dart';

import '../model/listitem.dart';
import '../styles/appstyle.dart';
import '../styles/sizeconfig.dart';

class ListVeiwItems extends StatelessWidget {
  ListVeiwItems({
    super.key,
  });

  final List<ListItems> listitems = [
    ListItems("assets/images/google.png", "Google", 12),
    ListItems("assets/images/outlook.png", "Outlook", 8),
    ListItems("assets/images/tellgram.png", "tellgram", 2),
    ListItems("assets/images/outlook.png", "Outlook", 8),
    ListItems("assets/images/tellgram.png", "tellgram", 2),
    ListItems("assets/images/google.png", "Google", 12),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: listitems.length,
      itemBuilder: ((context, index) {
        return Container(
          margin: EdgeInsets.only(
            left: index == 0 ? 24 : 0,
            right: index == 10 - 1 ? 24 : 8,
          ),
          child: Column(
            children: [
              Stack(children: [
                CircleAvatar(
                  backgroundColor: kWhiteColor,
                  maxRadius: 36,
                  foregroundImage: AssetImage(
                    listitems[index].images,
                  ),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        listitems[index].notifications.toString(),
                        style: kJakartaBodyBold.copyWith(
                            color: kWhiteColor,
                            fontSize: SizeConfig.blockSizeHorizontal! * kBody2),
                      ),
                    )),
              ]),
              const SizedBox(
                height: 8,
              ),
              Text(
                listitems[index].titleName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: kJakartaBodyMedium.copyWith(
                    color: kParagraphColor,
                    fontSize: SizeConfig.blockSizeHorizontal! * kBody1),
              ),
            ],
          ),
        );
      }),
    );
  }
}
