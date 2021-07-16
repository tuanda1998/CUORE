import 'package:cuore/screen/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('es')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        child: MyHomePage()
    ),
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // localizationsDelegates: [
      //   const SLMessageDelegate(),
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      // supportedLocales: [
      //   const Locale.fromSubtags(
      //       languageCode: 'en'), // English: UK/USA/Canada/Singapore/Australia
      //   const Locale.fromSubtags(languageCode: 'ja'), // Japanese
      //   const Locale.fromSubtags(languageCode: 'ko'), // Korea
      //   const Locale.fromSubtags(languageCode: 'zh'), // Chinese
      //   const Locale.fromSubtags(
      //       languageCode: 'zh',
      //       scriptCode: 'Hans'), // simplified Chinese 'zh_Hans'
      //   const Locale.fromSubtags(
      //       languageCode: 'zh',
      //       scriptCode: 'Hant'), // traditional Chinese 'zh_Hant'
      //   const Locale.fromSubtags(
      //       languageCode: 'zh',
      //       scriptCode: 'Hant',
      //       countryCode: 'HK'), // traditional Chinese 'zh_Hant_HK'
      //   const Locale.fromSubtags(
      //       languageCode: 'zh',
      //       scriptCode: 'Hant',
      //       countryCode: 'TW'), // traditional Chinese 'zh_Hant_TW'
      //   const Locale.fromSubtags(languageCode: 'th'), // Thailand
      //   const Locale.fromSubtags(languageCode: 'ms'), // Malaysia
      //   const Locale.fromSubtags(languageCode: 'id'), // Indonesia
      //   const Locale.fromSubtags(languageCode: 'fil'), // Philippines
      //   const Locale.fromSubtags(languageCode: 'vi'), // Vietnam
      //   const Locale.fromSubtags(languageCode: 'fr'), // France
      //   const Locale.fromSubtags(languageCode: 'de'), // Germany
      //   const Locale.fromSubtags(languageCode: 'it'), // Italy
      //   const Locale.fromSubtags(languageCode: 'ru'), // Russia
      //   const Locale.fromSubtags(languageCode: 'es'), // Spain
      //   const Locale.fromSubtags(languageCode: 'sw'), // Swahiri
      // ],
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale.languageCode == 'en' ? Locale('en'): Locale('es'),
      title: 'CUORE',
      theme: new ThemeData(
          // primaryColor: new Color(0xff075E54),
          accentColor: new Color(0xff25D366),
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          primaryIconTheme: IconThemeData(color: Colors.blue),
          primaryTextTheme: TextTheme(
              title: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme:
              TextTheme(title: TextStyle(color: Colors.black, fontSize: 16))),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      // home: new CureGoHome(),
    );
  }
}
