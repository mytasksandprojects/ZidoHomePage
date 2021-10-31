import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zido/style/colors.dart';

import 'pages/homeScreen/home_view.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('ar'),Locale('en')],
      path: 'assets/translations',
      // <-- change patch to your
      startLocale: const Locale('ar'),
      fallbackLocale: const Locale('ar'),
      useOnlyLangCode: true,
      child: const ZidoMain()));
}

class ZidoMain extends StatelessWidget {
  const ZidoMain({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: CustomColors.primaryColor)),
      home: const HomeView(),
    );
  }
}
