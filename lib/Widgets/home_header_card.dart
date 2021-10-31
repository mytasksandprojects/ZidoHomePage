import 'package:flutter/material.dart';
import 'package:zido/style/colors.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeHeaderCard extends StatelessWidget {
  const HomeHeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 130,
      color: CustomColors.homeHeaderCard,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'signupPointsMsg'.tr(),
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'shareZido'.tr(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'shareNow'.tr(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  color: CustomColors.homeHeaderCardButton,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 50,
                left:
                    EasyLocalization.of(context)?.currentLocale == Locale('en')
                        ? MediaQuery.of(context).size.width / 9
                        : 0.0,
                right:
                    EasyLocalization.of(context)?.currentLocale == Locale('en')
                        ? 0.0
                        : MediaQuery.of(context).size.width / 9),
            child: Image.asset(
              'assets/images/home_page/Zido-COins 3.png',
            ),
          )
        ],
      ),
    );
  }
}
