import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zido/style/colors.dart';

class LatestPostCard extends StatelessWidget {
  const LatestPostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ShaderMask(
              shaderCallback: (bounds) {
                return CustomColors.mainGradient.createShader(bounds);
              },
              child: Image.asset(
                'assets/images/home_page/holder.png',
                fit: BoxFit.cover,
              ),
              blendMode: BlendMode.srcOver,
            ),
          ),
          const Positioned.fill(
              left: 10,
              top: 50,
              child: Text(
                'Sodales urna sit varius vestibulum. Dignissim turpis nulla pharetra adipiscing sem libero vitae leo quis.',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          Positioned.fill(
            top: 100,
            child: ListTile(
              title: Row(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Text(
                        'Ayman Wattar long name',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        overflow: TextOverflow.ellipsis,
                      )),
                  const CircleAvatar(
                    radius: 7,
                    child: Icon(
                      Icons.check,
                      size: 12,
                    ),
                  ),
                ],
              ),
              leading: const CircleAvatar(
                backgroundImage:
                AssetImage('assets/images/home_page/human.png'),
                radius: 20,
              ),
              subtitle: const Text(
                '@khadijadosaryongusername',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white, fontSize: 8),
              ),
            ),
          ),
          Positioned.fill(
              left: EasyLocalization.of(context)?.currentLocale == Locale('en')
                  ? 250
                  : 0.0,
              right: EasyLocalization.of(context)?.currentLocale == Locale('en')
                  ? 0.0
                  : 250,
              top: 130,
              child: const Text(
                ' Aug 20, 2021',
                style: TextStyle(color: Colors.white, fontSize: 10),
              )),
        ],
      ),
    );
  }
}
