import 'package:exchange/providers/CryptoDataProvider.dart';
import 'package:exchange/providers/ThemeProvider.dart';
import 'package:exchange/ui/Main_Wrapper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CryptoDataProvider(),
        ),
      ],
      child: const MyMaterialApp(
          /*  localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'), // English
          Locale('es'), // Spanish
        ], */
          ),
    ),
  );
}

class MyMaterialApp extends StatefulWidget {
  const MyMaterialApp({super.key});

  @override
  State<MyMaterialApp> createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp(
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const Directionality(
            textDirection: TextDirection.ltr, child: MainWrapper()
            /* Center(
            child: Scaffold(
              appBar: AppBar(
                actions: const [
                  ThemeSwitcher(),
                ],
                title: const Text('ExchangeBs'),
              ),
              body: Container(),
            ),
          ), */
            ),
      );
    });
  }
}
