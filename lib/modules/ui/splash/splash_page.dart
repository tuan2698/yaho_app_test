import 'package:flutter/material.dart';
import 'package:yaho_test/core/ui/routes.dart';
import 'package:yaho_test/themes/image_resource.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 2));
      Navigator.of(context).pushReplacementNamed(Routes.home);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageResource.splash_screen),
            fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}
