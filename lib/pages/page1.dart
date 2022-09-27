import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tests_flutter/services/user_service.dart';
import 'package:tests_flutter/widgets/drawer.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      drawer: const drawer(),
      body: userService.userExist
          ? Text('User exist')
          : Text('User dose not exist'),
    );
  }
}
