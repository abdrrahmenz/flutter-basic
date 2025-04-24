import 'package:flutter/material.dart';
import 'package:flutter_basic/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBService.init();
  await Diointerceptors.init();
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override 
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: MainNavigationView(),
      onGenerateRoute: (routeSettings) {
        print(routeSettings.name);
        return null;
      },
    );
  }
}
