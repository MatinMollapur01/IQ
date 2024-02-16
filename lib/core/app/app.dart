import 'package:flutter/material.dart';
import 'package:iq/core/app/style.dart';
import 'package:iq/core/navigation/router.dart';

class AIBuddy extends StatelessWidget {
  const AIBuddy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'IQ assistant',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
