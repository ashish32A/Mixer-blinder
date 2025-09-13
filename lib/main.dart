import 'package:flutter/material.dart';
import 'screens/mixer_screen.dart';
import 'screens/mixer_vip_screen.dart';
import 'screens/subscription_screen.dart';
import 'screens/upgrade_homepage_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mixer App',
      theme: AppTheme.light(),
      initialRoute: MixerScreen.route,
      routes: {
        MixerScreen.route: (context) => const MixerScreen(),
        MixerVipScreen.route: (context) => const MixerVipScreen(),
        SubscriptionScreen.route: (context) => const SubscriptionScreen(),
        UpgradeHomepageScreen.route: (context) => const UpgradeHomepageScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
