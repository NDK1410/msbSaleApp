import 'dart:async';
import 'package:msbSaleApp/src/validators/validations.dart';

class LoginBloc {
  StreamController _userController = new StreamController();
  StreamController _passController = new StreamController();

  Stream get userStream => _userController.stream;
  // Stream getUserStream() {
  //   return _userController.stream;
  // }
  Stream get passStream => _passController.stream;

  bool isValidInput(String username, String password) {
    if (!Validations.isValidUser(username)) {
      _userController.sink.addError("Username Invalid");
      return false;
    }
    _userController.sink.add("Success");

    if (!Validations.isValidPass(password)) {
      _passController.sink.addError("Password must be more than 6 characters");
      return false;
    }
    _passController.sink.add("Ok");

    return true;
  }

  void dispose() {
    _userController.close();
    _passController.close();
  }
}
