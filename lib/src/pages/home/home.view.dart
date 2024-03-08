import 'package:flutter/material.dart';
import 'package:home/src/core/app_drawer.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/';

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: buildDrawerScaffold(context),
      body: const Center(
          child: Text('Hello World'),
        ),
    );
  }

}