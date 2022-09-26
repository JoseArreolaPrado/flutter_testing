import 'package:flutter/material.dart';
import 'package:tests_flutter/pages/homepage.dart';

import '../pages/page1.dart';

class drawer extends StatelessWidget {
  const drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'TEST APP',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: const Text('Home page'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      const MyHomePage(title: 'Flutter Demo Home Page'),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Page 1'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Page1(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Page 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Page 3'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
