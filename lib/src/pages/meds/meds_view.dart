import 'package:flutter/material.dart';
import 'package:home/src/core/app_drawer.dart';

class MedsView extends StatelessWidget {
  static const routeName = '/meds';

  const MedsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meds'),
      ),
      endDrawer: buildDrawerScaffold(context),
      body: const Center(
        child: Text('Hello World 2'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Create',
        // child: const Icon(Icons.add_outlined),
        label: const Text('Add'),
        icon: const Icon(Icons.add_outlined),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: BottomAppBar(
        shape: null,
        color: Colors.purple,
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
          child: Row(
            children: <Widget>[
              IconButton(
                tooltip: 'Search',
                icon: const Icon(Icons.search_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

}