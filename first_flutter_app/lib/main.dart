import 'package:first_flutter_app/common/my_keys.dart';
import 'package:first_flutter_app/common/my_routes.dart';
import 'package:first_flutter_app/generated/l10n.dart';
import 'package:first_flutter_app/pages/login_page.dart';
import 'package:first_flutter_app/values/colors_app.dart';
import 'package:first_flutter_app/values/theme_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
class MyApp extends StatefulWidget {
  MyApp() : super(key: myAppStateKey);

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                S.delegate
              ],
              supportedLocales: S.delegate.supportedLocales,
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              onGenerateRoute: (RouteSettings routeSettings) {
                return MyRoutes.generateRoutes(routeSettings);
              },
              initialRoute: ROUTE_PLAY_LIST,
              themeMode: themeMode,
              darkTheme: ThemeData(
                  scaffoldBackgroundColor: backgroundDark,
                  textTheme: textThemeDark,
                  iconTheme: iconThemeData,
                  primaryIconTheme: iconThemeDataDark
                  // useMaterial3: true,
                  ),
              theme: ThemeData(
                  scaffoldBackgroundColor: background, textTheme: textTheme, iconTheme: iconThemeData, primaryIconTheme: iconThemeData
                  // useMaterial3: true,
                  ),
              home: const LoginPage(),
            ));
  }

  changeTheme(ThemeMode themeMode) {
    setState(() {
      this.themeMode = themeMode;
    });
  }
}
