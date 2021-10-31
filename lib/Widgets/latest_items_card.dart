import 'package:flutter/material.dart';
import 'package:zido/style/colors.dart';
import 'package:easy_localization/easy_localization.dart';

class LatestItemsCard extends StatelessWidget {
  const LatestItemsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        color: CustomColors.latestItemsCardBackground,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset(
                      'assets/images/home_page/car.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                      left: EasyLocalization.of(context)?.currentLocale ==
                              Locale('en')
                          ? MediaQuery.of(context).size.width / 3.5
                          : MediaQuery.of(context).size.width / 15,
                      top: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(3)),
                        padding: const EdgeInsets.all(3),
                        child: const Icon(
                          Icons.favorite_border,
                          size: 20,
                          color: CustomColors.latestItemsCardSecondButton,
                        ),
                      )),
                  Positioned.fill(
                      top: MediaQuery.of(context).size.height / 6.2,
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: CustomColors.latestItemsCardTimer,
                        ),
                        child: const Center(
                            child: Text(
                          '71 : 59 : 59',
                          style: TextStyle(color: Colors.white),
                        )),
                      )),
                ],
              ),
              Row(
                children: [
                  const Text(
                    '99,999,999',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('SAR'.tr())
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: const Text(
                  'Square Furniture | First Office Furniture Manufacturer in EG EG EG EG',
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: CustomColors.primaryColor)),
                    child:const Center(
                      child: Text(
                        'Hafar Al Batin',
                        style: TextStyle(color: CustomColors.primaryColor),
                      ),
                    ),
                    padding:EdgeInsets.all(EasyLocalization.of(context)?.currentLocale==Locale('en')?5:1),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: CustomColors.latestItemsCardSecondButton)),
                    child: const Text(
                      'Used',
                      style: TextStyle(
                          color: CustomColors.latestItemsCardSecondButton),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
