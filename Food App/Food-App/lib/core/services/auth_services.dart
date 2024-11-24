// import '../../consts/consts.dart';

class AuthServices {
  // final databaseServices = DatabaseServices();
  // final customAuthResult = CustomAuthResult();
  // final authInstant = FirebaseAuth.instance;
  // bool? isLogin;
  // User? user;
  // AppUser appUser = AppUser();
  //
  // AuthServices() {
  //   init();
  // }
  //
  // init() async {
  //   user = authInstant.currentUser;
  //   if (user != null) {
  //     print('userrrrrrrrrr=======' + user!.uid.toString());
  //     isLogin = true;
  //     print("appuser=====>" + appUser.toString());
  //     this.appUser = await databaseServices.getUser(user!.uid);
  //     print('userId => ${this.appUser.appUserId}');
  //   } else {
  //     isLogin = false;
  //   }
  // }
  //
  // ///
  // /// logout ==================================>>>
  // ///
  // Future<void> logoutUser() async {
  //   try {
  //     // await FirebaseMessaging.instance.deleteToken();
  //     await authInstant.signOut();
  //     this.isLogin = false;
  //     this.appUser = AppUser();
  //     this.user = null;
  //   } catch (e) {}
  //
  //   print("==========>>> User logout Successfully....");
  // }
  //
  // Future<CustomAuthResult> signUpUser(AppUser appUser) async {
  //   try {
  //     final credential = await authInstant.createUserWithEmailAndPassword(
  //         email: appUser.userEmail!, password: appUser.password!);
  //     if (credential.user != null) {
  //       print('user registered');
  //
  //       this.appUser = appUser;
  //       this.appUser.appUserId = credential.user!.uid;
  //       this.isLogin = true;
  //
  //       print("SignUpUserId=> ${this.appUser.appUserId}");
  //       await databaseServices.registerUser(appUser);
  //       this.appUser = await databaseServices.getUser(credential.user!.uid);
  //       customAuthResult.user = credential.user;
  //     }
  //   } catch (e) {
  //     print('Exception@signUpUser $e');
  //     customAuthResult.errorMessage =
  //         AuthExceptionsMessages.generateExceptionMessage(e);
  //   }
  //   return customAuthResult;
  // }
  //
  // registerUser(appUser) async {
  //   await databaseServices.registerUser(appUser);
  //   this.appUser = await databaseServices.getUser(appUser.appUserId);
  // }
  //
  //
  // Future<CustomAuthResult> signInUser(AppUser appUser, BuildContext context) async {
  //   CustomAuthResult customAuthResult = CustomAuthResult();
  //   try {
  //     UserCredential userCredential = await authInstant.signInWithEmailAndPassword(
  //       email: appUser.userEmail.toString(),
  //       password: appUser.password.toString(),
  //     );
  //     User? user = userCredential.user;
  //     if (user != null) {
  //       print('User registered');
  //       this.appUser = appUser;
  //       this.appUser.appUserId = user.uid;
  //       this.isLogin = true;
  //       this.appUser = await databaseServices.getUser(user.uid);
  //       customAuthResult.user = user;
  //     }
  //   } catch (e) {
  //     print('Exception@signInUser $e');
  //     if (e is FirebaseAuthException) {
  //       switch (e.code) {
  //         case 'invalid-credential':
  //           customAuthResult.errorMessage = 'The supplied auth credential is incorrect';
  //           break;
  //         default:
  //           customAuthResult.errorMessage = 'An unknown error occurred';
  //       }
  //     } else {
  //       customAuthResult.errorMessage = 'An unknown error occurred';
  //     }
  //     throw e;
  //   }
  //   return customAuthResult;
  // }
  //
  // /// Delete User Function ==================>>>
  // Future<void> deleteUser({final email, final password}) async {
  //   try {
  //     print('delete user called');
  //
  //     User newUser = authInstant.currentUser!;
  //
  //     print("email:" + email);
  //     print(password);
  //
  //     AuthCredential credentials =
  //     EmailAuthProvider.credential(email: email, password: password);
  //
  //     final result = await newUser.reauthenticateWithCredential(credentials);
  //     await databaseServices.deleteUser();
  //     await result.user!.delete();
  //   } catch (e) {
  //     print("hello catch occuring");
  //     print(e.toString());
  //     return null;
  //   }
  // }
  //
  // Future<void> deleteUserProfile({required String isUser}) async {
  //   try {
  //     String profileType;
  //     if (isUser == "recruiter") {
  //       profileType = "AllRecruiter";
  //     } else if (isUser == "worker") {
  //       profileType = "AllWorkers";
  //     } else {
  //       throw Exception("Invalid user type");
  //     }
  //
  //     await databaseServices.deleteProfile(profileType);
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }
}
