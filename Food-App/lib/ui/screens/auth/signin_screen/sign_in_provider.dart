import 'package:flutter/cupertino.dart';
import 'package:security_gdpr/core/view_model.dart/base_view_model.dart';
// String? userID;
// String? userEmail;

class SignInProvider extends BaseViewModal {
  // // final authInstant = FirebaseAuth.instance;
  bool isVisiblePassword = true;
  final formKey = GlobalKey<FormState>();
  // // final _authServices = locator<AuthServices>();
  // // CustomAuthResult customAuthResult = CustomAuthResult();
  // // AppUser appUser = AppUser();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _loading = false;
  bool rememberMe = false;
  void toggleRememberMe(bool value) {
    rememberMe = value;
    notifyListeners();
  }

  bool get loading => _loading;
  bool _showPass = true;

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

  // void loginUser(AppUser appUser, String userEmail, BuildContext context) async {
  //   try {
  //     setState(ViewState.busy);
  //
  //     customAuthResult = await _authServices.signInUser(appUser, context);
  //
  //     setState(ViewState.idle);
  //
  //
  //     if (customAuthResult.user != null) {
  //       print("??????????????? $userEmail");
  //
  //       if (userEmail == "admin@gmail.com") {
  //         Get.off(() => AdminHome());
  //       } else {
  //         Get.off(() => Home());
  //       }
  //     } else {
  //       throw Exception(
  //           customAuthResult.errorMessage ?? 'Unknown error occurred');
  //     }
  //   } catch (e) {
  //     setState(ViewState.idle);
  //
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(
  //             customAuthResult.errorMessage ?? 'An unknown error occurred'),
  //         backgroundColor: Colors.red,
  //       ),
  //     );
  //   }
  // }
  //
  // /// Save user ID to SharedPreferences
  // saveUserIDToSharedPreferences(String? userID, String? userEmail) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('userID', userID!);
  //   prefs.setString('userEmail', userEmail!);
  // }
}
