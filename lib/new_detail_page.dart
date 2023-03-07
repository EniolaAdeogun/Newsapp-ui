import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/app_styles.dart';
import 'package:news_app/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  const FullScreenSlider(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(42),
                            topRight: Radius.circular(42),
                          ),
                          color: kLighterWhite),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kborderRadius),
                              border: Border.all(color: kWhite),
                            ),
                            padding: const EdgeInsets.all(kborderRadius),
                            child: SvgPicture.asset(''),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kborderRadius),
                              border: Border.all(color: kWhite),
                            ),
                            padding: const EdgeInsets.all(kborderRadius),
                            child: SvgPicture.asset(''),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text('Unravel mystries\n of the maldives',
                  style: kpoppinsBold.copyWith(
                      color: kdarkblue,
                      fontSize: SizeConfig.blockSizeHorizontal! * 7)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kborderRadius),
                  border: Border.all(
                    color: kbordercolor,
                  )),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 13,
                    backgroundColor: kblue,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/R.24d2fcc88bbb1152946614c08628d3db?rik=%2f8916IQiL95ERQ&pid=ImgRaw&r=0'),
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 2.5),
                  Text('Keanu Carpent  May 4  8mins read ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: kpoppinsRegular.copyWith(
                          color: kgrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'The Maldives Islands are a series of coral atolls built up from the crowns of a submerged ancient volcanic mountain range.\n All the islands are low-lying, none rising to more than 6 feet (1.8 metres) above sea level. Barrier reefs protect the islands from the destructive effects of monsoons. The rainy season, from May to August, is brought by the southwest monsoon; from December to March the northeast monsoon brings dry and mild winds. The average annual temperature varies from 76 to 86 °F (24 to 30 °C). Rainfall averages about 84 inches (2,130 mm) per year. The atolls have sandy beaches, lagoons, and a luxuriant growth of coconut palms, together with breadfruit trees and tropical bushes. Fish abound in the reefs, lagoons, and seas adjoining the islands; sea turtles are caught for food and for their oil, a traditional medicine.',
                style: kpoppinsMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    color: kdarkblue),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeHorizontal! * 4)
          ],
        ),
      ),
    );
  }
}

final List<String> imagelist = [
  'https://plus.unsplash.com/premium_photo-1666497934040-ec832d302f13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=970&q=80',
  'https://images.unsplash.com/photo-1543731068-7e0f5beff43a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZGl2ZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imagelist
              .map((item) => Center(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      height: SizeConfig.blockSizeVertical! * 50,
                      width: double.infinity,
                    ),
                  ))
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imagelist
                  .asMap()
                  .entries
                  .map((entry) => GestureDetector(
                        onTap: () => controller.animateToPage(entry.key),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: SvgPicture.asset(_current == entry.key
                              ? 'images/carousel_indicator_enabled.svg'
                              : 'images/carousel_indicator_disabled.svg'),
                        ),
                      ))
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
