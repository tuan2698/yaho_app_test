import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:yaho_test/core/ui/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp)async {
      await Future.delayed(const Duration(seconds: 2));
      Navigator.of(context).pushNamed(Routes.home);
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Splash Screen"),
    );
  }
}
