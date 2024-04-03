import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lotto_lotto_app/config/router/app_router.dart';
import 'package:lotto_lotto_app/config/router/theme/app_theme.dart';
import 'package:lotto_lotto_app/presentation/shared/menus/custom_banner_ad.dart';
import 'package:lotto_lotto_app/presentation/shared/menus/custom_banner_ad2.dart';
//import 'package:miloto_app/config/router/app_router.dart';
//import 'package:miloto_app/config/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await MobileAds.instance.initialize();


  runApp(
    DevicePreview(
      builder: (_) => const MyApp(),
      enabled: !kReleaseMode,
    ),
  );
}

class MyApp extends StatefulWidget {
  // ignore: use_super_parameters
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fondo_yellow.png'), 
                  fit: BoxFit.cover, 
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: MaterialApp.router(
                routerConfig: appRouter,
                title: 'Números para Baloto',
                builder: DevicePreview.appBuilder,
                locale: DevicePreview.locale(context),
                debugShowCheckedModeBanner: false,
                theme: AppTheme().getTheme(),
              ),
            ),
          ),
          Positioned(bottom: 0, child: AnchoredAdaptive()),
          Positioned(top: 0, child: AnchoredAdaptive2()),
        ],
      ),
    );
  }
}
