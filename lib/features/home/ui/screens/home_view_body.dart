import 'package:flutter/material.dart';
import 'package:tap_doc_app/core/theme/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text(
          'Home Screen',
          style: Styles.font32BlueBold,
        ),
      ),
    );
  }
}
