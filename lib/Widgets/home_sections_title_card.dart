import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zido/style/colors.dart';
import 'package:easy_localization/easy_localization.dart';
class HomeSectionTitle extends StatelessWidget {
  final String sectionTitle;

  const HomeSectionTitle({Key? key, this.sectionTitle=''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(sectionTitle,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          Text('seeAll'.tr(),style:const TextStyle(color: CustomColors.primaryColor,fontSize: 12),),
        ],
      ),
    );
  }
}
