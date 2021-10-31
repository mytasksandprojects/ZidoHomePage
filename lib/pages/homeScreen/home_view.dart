import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zido/Widgets/home_header_card.dart';
import 'package:zido/Widgets/home_sections_title_card.dart';
import 'package:zido/Widgets/latest_items_card.dart';
import 'package:zido/Widgets/latest_posts_card.dart';
import 'package:zido/Widgets/private_auctions_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:zido/style/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    TabController mainTabController =
        TabController(length: 4, vsync: NavigatorState());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('Zido ${EasyLocalization.of(context)?.currentLocale}'),
        leading: const Icon(Icons.search),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () async{
                 if(EasyLocalization.of(context)?.currentLocale==const Locale('en'))
                {
                  setState(() {
                   context.setLocale(const Locale('ar'));
                  });
                } else {
                    setState(() {
                      context.setLocale(const Locale('en'));
                    });
                  }
                  },
                child: const Icon(Icons.notifications_none)),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: mainTabController,
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          PageView(
                            children: const [
                              HomeHeaderCard(),
                              HomeHeaderCard(),
                              HomeHeaderCard(),
                              HomeHeaderCard(),
                            ],
                            onPageChanged: (index) {
                              setState(() {
                                pageIndex = index;
                              });
                            },
                          ),
                          Positioned.fill(
                            top: 130,
                            left: 150,
                            child: CarouselIndicator(
                              activeColor: CustomColors.homeHeaderCardButton,
                              color: Colors.white,
                              count: 4,
                              index: pageIndex,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                 HomeSectionTitle(
                  sectionTitle:'latestItems'.tr(),
                ),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    itemExtent: MediaQuery.of(context).size.width / 2.2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const LatestItemsCard(),
                    itemCount: 4,
                  ),
                ),
                 HomeSectionTitle(
                  sectionTitle: 'privateAuctions'.tr(),
                ),
                const PrivateAuctionsCard(),
                const PrivateAuctionsCard(),
                HomeSectionTitle(
                  sectionTitle: 'latestPosts'.tr(),
                ),
                CarouselSlider(
                  carouselController: CarouselController(),
                  items: [
                    for (int i = 0; i < 4; i++) const LatestPostCard(),
                  ],
                  options: CarouselOptions(
                    viewportFraction: 0.85,
                  ),
                ),
              ],
            ),
            Container(),
            Container(),
            Container(),
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: TabBar(
        unselectedLabelColor: Colors.black,
        labelColor: CustomColors.primaryColor,
        indicator: const BoxDecoration(),
        tabs: [
          Tab(
            text: 'home'.tr(),
            icon: const Icon(Icons.home),
          ),
          Tab(
            text: 'buy'.tr(),
            icon: const Icon(Icons.shopping_cart),
          ),
          Tab(
            text: 'sell'.tr(),
            icon: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
              child: const Icon(Icons.add),
            ),
          ),
          Tab(
            text: 'account'.tr(),
            icon: const Icon(Icons.person),
          ),
        ],
        controller: mainTabController,
      ),
    );
  }
}
