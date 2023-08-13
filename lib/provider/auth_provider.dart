import 'package:flutter/cupertino.dart';
import 'package:sisonke/data/repository/auth_repo.dart';

class AuthProvider extends ChangeNotifier{
  AuthRepo authRepo;


  AuthProvider({required this.authRepo});

  bool _isChecked=false;

  bool get isChecked => _isChecked;

  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }
}