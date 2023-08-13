import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sisonke/helper/custom_delegate.dart';
import 'package:sisonke/localization/app_localization.dart';
import 'package:sisonke/provider/auth_provider.dart';
import 'package:sisonke/provider/localization_provider.dart';
import 'package:sisonke/provider/splash_provider.dart';
import 'package:sisonke/provider/theme_provider.dart';
import 'package:sisonke/theme/dark_theme.dart';
import 'package:sisonke/theme/light_theme.dart';
import 'package:sisonke/util/app_constant.dart';
import 'package:sisonke/view/screen/auth/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:sisonke/view/screen/splash/splash_screen.dart';
import 'package:flutter/services.dart';

import 'di_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((value) => runApp(MyApp()));
  await Firebase.initializeApp();
  await di.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => di.sl<SplashProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<ThemeProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<LocalizationProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<AuthProvider>())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    List<Locale> _local = [];
    AppConstants.languages.forEach((language) {
      _local.add(Locale(language.languageCode ?? "en", language.countryCode));
    });

    return MaterialApp(

      title: AppConstants.APP_NAME,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).darkTheme ? dark : light,
      locale: Provider.of<LocalizationProvider>(context).locale,
      localizationsDelegates: [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FallbackLocalizationDelegate()
      ],
      supportedLocales: _local,
      home: SplashScreen(),
    );
  }
}
