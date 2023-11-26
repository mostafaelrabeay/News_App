import 'package:flutter/material.dart';
import 'package:flutter_application_1/homeview.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(
            'https://imgs.search.brave.com/UKe4zHPtZYIdWBmKhGiLrtis7yQ67QAFL8ByvU-bF14/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9sb2dv/LmNvbS9pbWFnZS1j/ZG4vaW1hZ2VzL2t0/czkyOHBkL3Byb2R1/Y3Rpb24vYjhjOWY1/YzNiMGIzZmFlYmJj/MzlkM2IxZThmMzYx/NTY1NjlhNjBmNi03/MzF4NzMxLnBuZz93/PTEwODAmcT03Mg'),
      ),
    );
  }
}
