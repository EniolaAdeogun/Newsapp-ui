import 'package:flutter/material.dart';
import 'package:news_app/new_detail_page.dart';
import 'app_styles.dart';
import 'size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: const NewsDetailPage(),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kWhite,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? SvgPicture.asset('images/home_selected_icon.svg')
                    : SvgPicture.asset('images/home_unselected_icon.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? SvgPicture.asset('images/bookmark_selected_icon.svg')
                    : SvgPicture.asset('images/bookmark_unselected_icon.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? SvgPicture.asset('images/notification_selected_icon.svg')
                    : SvgPicture.asset(
                        'images/notification_unselected_icon.svg'),
                label: ''),
            BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? SvgPicture.asset('images/profile_selected_icon.svg')
                    : SvgPicture.asset('images/profile_unselected_icon.svg'),
                label: ''),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        children: [
          Row(
            children: [
              Container(
                height: 51,
                width: 51,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: klightblue,
                    image: const DecorationImage(
                        image: AssetImage('images/3D AVATAR.png'))),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome back!',
                    style: kpoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Monday 3 August',
                    style: kpoppinsRegular.copyWith(
                      color: kgrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: kWhite,
              boxShadow: [
                BoxShadow(
                    color: kdarkblue.withOpacity(0.051),
                    offset: const Offset(0.0, 3.0),
                    blurRadius: 24,
                    spreadRadius: 0),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kpoppinsRegular.copyWith(
                        color: kblue,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 13),
                        hintText: 'Search for article',
                        border: kborder,
                        errorBorder: kborder,
                        disabledBorder: kborder,
                        focusedBorder: kborder,
                        focusedErrorBorder: kborder,
                        hintStyle: kpoppinsBold.copyWith(
                          color: klightergrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kblue,
                    borderRadius: BorderRadius.circular(kborderRadius),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('images/search_icon.svg'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 14,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 38,
                    ),
                    child: Text(
                      'Health',
                      style: kpoppinsMedium.copyWith(
                        color: kgrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  );
                })),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 304,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(right: 20),
                    height: 304,
                    width: 255,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kborderRadius),
                      color: kWhite,
                      boxShadow: [
                        BoxShadow(
                          color: kdarkblue.withOpacity(0.051),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 24.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 164,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kborderRadius),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://th.bing.com/th/id/OIP.NWuBcYbpQpdsqjLXFdtlrAHaFj?pid=ImgDet&rs=1'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Flexible(
                          child: Text(
                            'Maldives- unique , unmatched, There is no other place like Maldives in this world.',
                            style: kpoppinsBold.copyWith(
                                fontSize:
                                    SizeConfig.blockSizeHorizontal! * 3.5),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 19,
                                  backgroundColor: klightblue,
                                  backgroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1579673065402912769/KaFidqub_400x400.jpg'),
                                ),
                                const SizedBox(width: 12),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Adeogun Eniola',
                                      style: kpoppinsSemiBold.copyWith(
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! * 3,
                                      ),
                                    ),
                                    Text(
                                      'Sept 9 2022',
                                      style: kpoppinsRegular.copyWith(
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  3,
                                          color: kgrey),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              height: 38,
                              width: 38,
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(kborderRadius),
                                  color: kWhite),
                              child: SvgPicture.asset('images/share_icon.svg'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Short for you',
                style: kpoppinsBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4.5),
              ),
              Text(
                'View all',
                style: kpoppinsMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    color: kblue),
              )
            ],
          ),
          const SizedBox(
            height: 19,
          ),
          SizedBox(
            height: 88,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(9.0),
                  margin: const EdgeInsets.only(right: 20),
                  height: 88,
                  width: 208,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kborderRadius),
                    boxShadow: [
                      BoxShadow(
                        color: kdarkblue.withOpacity(0.051),
                        offset: const Offset(0.0, 3.0),
                        blurRadius: 24.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: const EdgeInsets.all(26),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kborderRadius),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.zzZi2Fl79oSDHZSzYgX8xAHaE8?pid=ImgDet&rs=1'))),
                        child: SvgPicture.asset('images/play_icon.svg'),
                      ),
                      const SizedBox(width: 12),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Italy',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kpoppinsSemiBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5),
                            ),
                            const SizedBox(height: 9),
                            Row(
                              children: [
                                SvgPicture.asset('images/eye_icon.svg'),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '48,789',
                                  style: kpoppinsMedium.copyWith(
                                    color: kgrey,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
