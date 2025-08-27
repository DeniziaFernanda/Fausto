import 'package:fausto/core/localization/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fausto/core/constants/app_image_url.dart';
import 'package:fausto/core/routes/route_names.dart';
import 'package:fausto/shared/styles/theme_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    await Future.delayed(const Duration(milliseconds: 2150), () {});
    context.go(RouteNames.home);
  }

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors(context);
    final localization = AppLocalizations.of(context)!;
    return Scaffold(
          backgroundColor: colors.background(),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(AppImageUrl.logoIcon),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  localization.welcomeText,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: colors.primary()),
                )
              ],
            ),
          ),
        );
  }
}
