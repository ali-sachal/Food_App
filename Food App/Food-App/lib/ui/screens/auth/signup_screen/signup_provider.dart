import 'package:flutter/cupertino.dart';

class SignUpProvider extends ChangeNotifier{
  final formKey = GlobalKey<FormState>();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // // final authInstant = FirebaseAuth.instance;
  bool isVisiblePassword = true;
  // // final _authServices = locator<AuthServices>();
  // // CustomAuthResult customAuthResult = CustomAuthResult();
  // // AppUser appUser = AppUser();
  bool _loading = false;
  bool rememberMe = false;
  void toggleRememberMe(bool value) {
    rememberMe = value;
    notifyListeners();
  }

  bool get loading => _loading;
  bool _showPass =true;

  bool get showPass => _showPass;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  setShowPass() {
    print(_showPass);
    _showPass = !_showPass;
    notifyListeners();
  }

}