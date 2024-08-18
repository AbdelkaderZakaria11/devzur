import 'package:devzur/frontend/connection/controller/page_home_view.dart';
import 'package:devzur/frontend/presentation/screens/splach_screen.dart';
// ignore: unused_import
import 'package:devzur/frontend/presentation/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:devzur/frontend/global/theme/theme_data_light.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageHomeView()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'devzur Flutter Project',
      theme: themeDataLight,
      home:  const SplachScreen(),
    );
  }
}
