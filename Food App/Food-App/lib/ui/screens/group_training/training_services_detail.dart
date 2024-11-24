import 'package:flutter/material.dart';

class TrainingServicesDetailScreen extends StatelessWidget {
  const TrainingServicesDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Image.asset("assets/images/Training Services.jpg"),
      ),
    );
  }
}
