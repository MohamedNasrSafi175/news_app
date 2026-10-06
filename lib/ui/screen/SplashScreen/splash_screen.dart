import 'package:flutter/material.dart';
import 'package:news_app/ui/utils/app_assets.dart';
import 'package:news_app/ui/utils/app_routes.dart';
import 'package:news_app/ui/utils/build_context_extention.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, AppRoutes.homeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildImage);
  }

  Widget get buildImage => Image.asset(
    context.isDark ? AppAssets.darkLogoSplash : AppAssets.lightLogoSplash,
  );
}
