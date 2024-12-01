import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:unisco_app/pages/main_page.dart';
import 'package:unisco_app/provider/app_provider.dart';
import 'package:unisco_app/routes/app_routes.dart';
import 'package:unisco_app/theme/color_extractor.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final ThemeData lightTheme = await lightColorExtractor();
  final ThemeData darkTheme = await darkColorExtractor();

  runApp(Core(
    lightTheme: lightTheme,
    darkTheme: darkTheme,
  ));
}

class Core extends StatelessWidget {
  final ThemeData lightTheme;
  final ThemeData darkTheme;
  const Core({
    Key? key,
    required this.lightTheme,
    required this.darkTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProvider.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "UNISCO App",
        themeMode: ThemeMode.light,
        theme: lightTheme,
        darkTheme: darkTheme,
        scrollBehavior: const CupertinoScrollBehavior(),
        initialRoute: "/",
        routes: AppRoute.routes,
      ),
    );
  }
}
