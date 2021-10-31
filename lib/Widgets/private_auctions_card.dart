import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:zido/style/colors.dart';

class PrivateAuctionsCard extends StatelessWidget {
  const PrivateAuctionsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          EasyLocalization.of(context)?.currentLocale == Locale('en')
              ? SizedBox(
                  height: 150,
                  child: Image.asset(
                    'assets/images/home_page/bedroom.png',
                    fit: BoxFit.fill,
                  ),
                )
              : Container(),
          Positioned.fill(
            left: EasyLocalization.of(context)?.currentLocale == Locale('en')
                ? 150
                : 0.0,
            right: EasyLocalization.of(context)?.currentLocale == Locale('en')
                ? 0.0
                : 155,
            child: Container(
              color: CustomColors.latestItemsCardBackground,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'In facilisi auctor pulvinar donec gravida elementum ut nec',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                            child: const Text(
                              'Ayman Wattar long name',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: CustomColors.primaryColor),
                            )),
                        const CircleAvatar(
                          radius: 7,
                          child: Icon(
                            Icons.check,
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage('assets/images/home_page/human.png'),
                    ),
                    subtitle: const Text(
                      '@khadijadosaryongusername',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
              top: EasyLocalization.of(context)?.currentLocale == Locale('en')
                  ? 100
                  : 123,
              left: EasyLocalization.of(context)?.currentLocale == Locale('en')
                  ? 120
                  : 0,
              right: EasyLocalization.of(context)?.currentLocale == Locale('en')
                  ? 0.0
                  : 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.alarm,
                        color: CustomColors.latestItemsCardSecondButton,
                      ),
                      Text('00:10:47'),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: 30,
                    child: Center(child: Text('join'.tr())),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: CustomColors.primaryColor,
                    ),
                  ),
                ],
              )),
          EasyLocalization.of(context)?.currentLocale == Locale('en')
              ? Container()
              : SizedBox(
                  height: 150,
                  child: Image.asset(
                    'assets/images/home_page/bedroom.png',
                    fit: BoxFit.fill,
                  ),
                ),
        ],
      ),
    );
  }
}
