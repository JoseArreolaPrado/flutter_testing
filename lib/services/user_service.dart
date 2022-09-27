import 'package:flutter/material.dart';
import 'package:tests_flutter/model/user.dart';

class UserService with ChangeNotifier {
  User? _user;
  User get user => _user!;
  bool get userExist => _user != null ? true : false;
}
