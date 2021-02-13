import 'package:demo/views/home.dart';
import 'package:demo/views/login.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:demo/commons/route_generator.dart';
import 'package:demo/commons/themes.dart';
import 'package:demo/commons/utilities.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await Utilities.userToken();

  await SentryFlutter.init(
    (options) {
      options.dsn = 'https://d0ba64b8ba6247b88c607c623ab8fa73@o523504.ingest.sentry.io/5635617';
    },
    appRunner: () => runApp(
      EasyLocalization(
          supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
          path: 'assets/langs',
          fallbackLocale: Locale('en', 'US'),
          child: MyApp(
            token: token,
          )),
    ),
  );

// try {
  
//   throw("some arbitrary error");
// } catch (exception, stackTrace) {
//   await Sentry.captureException(
//     exception,
//     stackTrace: stackTrace,
//   );
// }

  // runApp(
  //   EasyLocalization(
  //       supportedLocales: [Locale('en', 'US'), Locale('de', 'DE')],
  //       path: 'assets/langs',
  //       fallbackLocale: Locale('en', 'US'),
  //       child: MyApp(
  //         token: token,
  //       )),
  // );
}

class MyApp extends StatelessWidget {
  final String token;
  MyApp({this.token});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'drawer.title'.tr(),
      theme: primaryTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      home: this.token != null ? HomePage() : LoginPage(),
    );
  }
}
