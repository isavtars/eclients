import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:svg_icon/svg_icon.dart';

import '../model/carditems.dart';
import '../styles/appstyle.dart';
import '../styles/custometype_indictors.dart';
import '../styles/sizeconfig.dart';
import '../widgets/toplistview.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<CardItems> democard = [
    CardItems(
        iimagename: "assets/icons/android.svg",
        name: "Sara",
        titlenme: "Congratulations!",
        descriptions: "You just win the Email client challenge 2022.",
        time: "10m",
        status: true),
    CardItems(
        iimagename: "assets/icons/apple.svg",
        name: "Leslie Alexander",
        titlenme: "Design Summit 2022",
        descriptions:
            "We are looking for a Senior UX designer to retouch our work.",
        time: "50m",
        status: false),
    CardItems(
        iimagename: "assets/icons/graphic.svg",
        name: "Robert Foxa",
        titlenme: "UX Job Interview",
        descriptions:
            "We are looking for a Senior UX designer to retouch our work.",
        time: "10m",
        status: true),
    CardItems(
        iimagename: "assets/icons/android.svg",
        name: "John Doe",
        titlenme: "Congratulations!",
        descriptions: "You just win the Email client challenge 2022.",
        time: "10m",
        status: true),
    CardItems(
        iimagename: "assets/icons/apple.svg",
        name: "Sara",
        titlenme: "Apple Support",
        descriptions:
            "We are looking for a Senior UX designer to retouch our work.",
        time: "51m",
        status: false),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kWhiteColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {},
          child: const Icon(Icons.edit_outlined),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              //
              Container(
                color: kBackgroundColor,
                padding: const EdgeInsets.only(
                  top: 54,
                  left: 24.0,
                  right: 24.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "All Inboxes",
                              style: kJakartaHeading1.copyWith(
                                  color: kDarkColor,
                                  fontSize: SizeConfig.blockSizeHorizontal! *
                                      kHeading1),
                            ),
                            Icon(
                              CupertinoIcons.chevron_down,
                              size: SizeConfig.blockSizeHorizontal! * kHeading3,
                            )
                          ],
                        ),
                        Text(
                          "Total 2500 Messages, 3 Unread",
                          style: kJakartaBodyMedium.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * kBody1,
                          ),
                        )
                      ],
                    ),
                    const CircleAvatar(
                        maxRadius: 27,
                        backgroundColor: kSecondaryColor,
                        backgroundImage: AssetImage("assets/images/aa.jpg"))
                  ],
                ),
              ),

              Container(
                height: 28,
                color: kBackgroundColor,
              ),
              //listveiwBuilder
              Container(
                color: kBackgroundColor,
                child: SizedBox(height: 98, child: ListVeiwItems()),
              ),
              Container(
                height: 48,
                color: kBackgroundColor,
              ),
              Container(
                height: 30,
                transform: Matrix4.translationValues(0, -24, 0),
                decoration: const BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
              ),
              Container(
                height: 30,
                transform: Matrix4.translationValues(0, -36, 0),
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: DefaultTabController(
                          length: 3,
                          child: TabBar(
                            indicatorWeight: 8,
                            labelColor: kDarkColor,
                            isScrollable: true,
                            labelStyle: kJakartaBodyBold.copyWith(
                                fontSize:
                                    SizeConfig.blockSizeHorizontal! * kBody1),
                            unselectedLabelColor: kDark40Color,
                            indicator: RoundedRectangleTabIndicator(
                                weight: 4,
                                width: 24,
                                padding: 12.0,
                                color: kPrimaryColor),
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) {
                                return states.contains(MaterialState.focused)
                                    ? null
                                    : Colors.transparent;
                              },
                            ),
                            labelPadding: const EdgeInsets.only(
                              right: 24,
                            ),
                            splashFactory: NoSplash.splashFactory,
                            tabs: const [
                              Tab(
                                text: "primary",
                              ),
                              Tab(
                                text: "Social",
                              ),
                              Tab(
                                text: "Forums",
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 19.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Icon(
                          Icons.more_horiz,
                          color: kDark40Color,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Edits",
                          style: kJakartaBodyBold.copyWith(
                              color: kDark40Color,
                              fontSize:
                                  SizeConfig.blockSizeHorizontal! * kBody1),
                        )
                      ],
                    ),
                  )
                ]),
              ),
              Container(
                // color: kPrimary10Color,
                padding: const EdgeInsets.only(top: 16),
                transform: Matrix4.translationValues(0, -36, 0),
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/emailsend");
                        },
                        child: Container(
                          height: 116,
                          padding: const EdgeInsets.all(16),
                          margin: const EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: kBackgroundColor),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 38,
                                  width: 40,
                                  margin: const EdgeInsets.only(bottom: 20),
                                  padding: const EdgeInsets.all(2),
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 207, 230, 243),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: SvgIcon(
                                    democard[index].iimagename,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        democard[index].name,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: kJakartaBodyMedium.copyWith(
                                            color: kParagraphColor,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                kBody1),
                                      ),
                                      Text(
                                        democard[index].titlenme,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: kJakartaHeading4.copyWith(
                                            color: kDarkColor,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                kHeading4),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        democard[index].descriptions,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: kJakartaBodyMedium.copyWith(
                                            color: kParagraphColor,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                kBody1),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                SizedBox(
                                    height: 58,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          democard[index].time,
                                          style: kJakartaHeading4.copyWith(
                                              color: kDarkColor,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  kHeading4),
                                        ),
                                        Container(
                                          height: 8,
                                          width: 8,
                                          decoration: BoxDecoration(
                                              color:
                                                  democard[index].status == true
                                                      ? Colors.green
                                                      : kSecondaryColor,
                                              shape: BoxShape.circle),
                                        )
                                      ],
                                    ))
                              ]),
                        ),
                      );
                    })),
              )
            ],
          ),
        ));
  }
}

// class CustomTabIndicator extends Decoration {
//   final double radius;

//   final Color color;

//   final double indicatorHeight;

//   const CustomTabIndicator({
//     this.radius = 8,
//     this.indicatorHeight = 4,
//     this.color = Colors.blue,
//   });

//   @override
//   _CustomPainter createBoxPainter([VoidCallback? onChanged]) {
//     return _CustomPainter(
//       this,
//       onChanged,
//       radius,
//       color,
//       indicatorHeight,
//     );
//   }
// }

// class _CustomPainter extends BoxPainter {
//   final CustomTabIndicator decoration;
//   final double radius;
//   final Color color;
//   final double indicatorHeight;

//   _CustomPainter(
//     this.decoration,
//     VoidCallback? onChanged,
//     this.radius,
//     this.color,
//     this.indicatorHeight,
//   ) : super(onChanged);

//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     assert(configuration.size != null);

//     final Paint paint = Paint();
//     double xAxisPos = offset.dx + configuration.size!.width / 4;
//     double yAxisPos =
//         offset.dy + configuration.size!.height - indicatorHeight / 5;
//     paint.color = color;

//     RRect fullRect = RRect.fromRectAndCorners(
//       Rect.fromCenter(
//         center: Offset(xAxisPos, yAxisPos),
//         width: configuration.size!.width / 2,
//         height: indicatorHeight,
//       ),
//       topLeft: Radius.circular(radius),
//       topRight: Radius.circular(radius),
//     );

//     canvas.drawRRect(fullRect, paint);
//   }
// }
