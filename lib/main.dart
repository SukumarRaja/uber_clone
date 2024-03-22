import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:uber/rider/controller/bottomNavRider/bottomNavBarProvider.dart';
import 'package:uber/rider/view/account_screen.dart';
import 'package:uber/rider/view/bottomnav/bottomNavBar.dart';
import 'constant/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<BottomNavBarProvider>(
                create: (_) => BottomNavBarProvider())
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: AppBarTheme(color: white, elevation: 0),
            ),
            home: const BottomNavBarRider(),
          ),
        );
      },
    );
  }
}
