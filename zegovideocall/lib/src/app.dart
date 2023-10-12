import 'package:flutter/material.dart';
import 'package:zegovideocall/src/views/home.view.dart';
import 'package:zegovideocall/src/views/videocall.view.dart';

import 'config/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.home: (_) => const HomeView(),
        AppRoutes.videocall: (_) => const VideoCallView(),
      },
      initialRoute: AppRoutes.home,
    );
  }
}
