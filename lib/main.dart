import 'package:clothing_store_app/app_styles.dart';
import 'package:clothing_store_app/product_detail_screen.dart';
import 'package:clothing_store_app/size_config.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
  //int _currentIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body: const HomeScreen(),
      //   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //   floatingActionButton: Container(
      //     padding: const EdgeInsets.symmetric(horizontal: 8),
      //     height: 64,
      //     child: CustomNavigationBar(
      //       items: [
      //         CustomNavigationBarItem(
      //             icon: _currentIndex == 0
      //                 ? Image.asset('assets/home_selected.png')
      //                 : Image.asset('assets/home_unselected.png')),
      //         CustomNavigationBarItem(
      //             icon: _currentIndex == 1
      //                 ? Image.asset('assets/bag_selected.png')
      //                 : Image.asset('assets/bag_unselected.png')),
      //         CustomNavigationBarItem(
      //             icon: _currentIndex == 2
      //                 ? Image.asset('assets/love1_selected.png')
      //                 : Image.asset('assets/love1_unselected.png')),
      //         CustomNavigationBarItem(
      //             icon: _currentIndex == 3
      //                 ? Image.asset('assets/profile_selected.png')
      //                 : Image.asset('assets/profile_unselected.png'))
      //       ],
      //       onTap: (index) {
      //         setState(() {
      //           _currentIndex = index;
      //         });
      //       },
      //       isFloating: true,
      //       borderRadius: const Radius.circular(40),
      //       selectedColor: myWhite,
      //       unSelectedColor: myGrey,
      //       backgroundColor: myBrown,
      //       strokeColor: Colors.transparent,
      //       scaleFactor: 0.1,
      //       iconSize: 40,
      //     ),
      //   ),
      // ),
      home: ProductDetailPage(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> catagories = [
    "All items",
    "Dress",
    "Hat",
    "Watch",
  ];
  List<String> icons = [
    'item',
    'dress',
    'hat',
    'watch',
  ];

  List<String> images = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: myPaddingHorizotal, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Hello, Welcome 👋",
                      style: myEncodeSansRegular.copyWith(
                          color: myDarkBrown,
                          fontSize: SizeConfig.blocksizeHorizental! * 3.5)),
                  Text("Albert Stevano",
                      style: myEncodeSansBold.copyWith(
                          color: myDarkBrown,
                          fontSize: SizeConfig.blocksizeHorizental! * 4))
                ],
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: myGrey,
                backgroundImage: AssetImage('assets/images/4.jpg'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: myPaddingHorizotal),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                style: myEncodeSansRegular.copyWith(
                    color: myGrey,
                    fontSize: SizeConfig.blocksizeHorizental! * 3.5),
                controller: TextEditingController(),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 13),
                    prefixIcon: IconTheme(
                      data: IconThemeData(color: myGrey),
                      child: Icon(Icons.search),
                    ),
                    hintText: 'Search cloths..',
                    border: myInpuBorder,
                    errorBorder: myInpuBorder,
                    disabledBorder: myInpuBorder,
                    focusedBorder: myInpuBorder,
                    focusedErrorBorder: myInpuBorder,
                    enabledBorder: myInpuBorder,
                    hintStyle: myEncodeSansRegular.copyWith(
                      color: myDarkGrey,
                      fontSize: SizeConfig.blocksizeHorizental! * 3.5,
                    )),
              )),
              const SizedBox(
                width: 16,
              ),
              Container(
                height: 55,
                width: 55,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(myBorderRedius),
                ),
                child: Image.asset('assets/filter.jpg'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        SizedBox(
            width: double.infinity,
            height: 36,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: catagories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? myPaddingHorizotal : 15,
                      right: index == catagories.length - 1
                          ? myPaddingHorizotal
                          : 0,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 36,
                    decoration: BoxDecoration(
                      color: current == index ? Colors.blue : myWhite,
                      borderRadius: BorderRadius.circular(8),
                      border: current == index
                          ? null
                          : Border.all(color: myLightGrey, width: 1),
                    ),
                    child: Row(
                      children: [
                        Image.asset(current == index
                            ? 'assets/${icons[index]}_selected.png'
                            : 'assets/${icons[index]}_unselected.png'),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(catagories[index],
                            style: myEncodeSansMedium.copyWith(
                                color: current == index ? myWhite : myDarkBrown,
                                fontSize: SizeConfig.blocksizeHorizental! * 3))
                      ],
                    ),
                  ),
                );
              },
            )),
        const SizedBox(
          height: 32,
        ),
        Scrollbar(
          thumbVisibility: true,
          
          child: MasonryGridView.count(
            physics:const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisSpacing: 20,
              mainAxisSpacing: 23,
              itemCount: images.length,
              padding: const EdgeInsets.symmetric(horizontal: myPaddingHorizotal),
              crossAxisCount: 2,
              itemBuilder: ((context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Positioned(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(myBorderRedius),
                          child: Image.asset(
                            'assets/images/${images[index]}.jpg',
                            fit: BoxFit.cover,
                          ),
                        )),
                        Positioned(
                            right: 12,
                            top: 12,
                            child: GestureDetector(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/love_unselected.png',
                                  color: Colors.white,
                                )))
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Modern light cloths',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: myEncodeSansBold.copyWith(
                        color: myDarkBrown,
                        fontSize: SizeConfig.blocksizeHorizental! * 3.5,
                      ),
                    ),
                    Text(
                      'Modern Dress',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: myEncodeSansBold.copyWith(
                        color: myGrey,
                        fontSize: SizeConfig.blocksizeHorizental! * 2.5,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$212.99',
                          style: myEncodeSansSemibold.copyWith(
                            color: myDarkBrown,
                            fontSize: SizeConfig.blocksizeHorizental! * 3.5,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: myYellow,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '5.0',
                              style: myEncodeSansRegular.copyWith(
                                color: myDarkBrown,
                                fontSize: SizeConfig.blocksizeHorizental! * 3,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                );
              })),
        )
      ],
    ));
  }
}
