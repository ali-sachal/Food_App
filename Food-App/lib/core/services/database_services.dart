import '../../locator.dart';
import 'auth_services.dart';

final currentAppUser = locator<AuthServices>();

class DatabaseServices {
  // final firebaseFireStore = FirebaseFirestore.instance;
  //
  // ///
  // /// Add user
  // ///
  // registerUser(AppUser appUser) {
  //   print("AppUser ID is ::>> ${appUser.appUserId}");
  //   try {
  //     firebaseFireStore
  //         .collection("AppUser")
  //         .doc(appUser.appUserId)
  //         .set(appUser.toJson());
  //   } catch (e) {
  //     print('Exception $e');
  //   }
  // }
  //
  // ///
  // /// Get user
  // ///
  // Future<AppUser> getUser(id) async {
  //   print('GetUser id: $id');
  //   try {
  //     final snapshot =
  //         await firebaseFireStore.collection('AppUser').doc(id).get();
  //     return AppUser.fromJson(snapshot.data(), snapshot.id);
  //   } catch (e) {
  //     print('Exception ????@DatabaseService/getUser $e');
  //     return AppUser();
  //   }
  // }
  //
  // ///  Registered Complaints  >>>>
  // updateAccountDetail(AppUser appUser, String UserID) {
  //   try {
  //     firebaseFireStore.collection("AppUser").doc(UserID).set(appUser.toJson());
  //   } catch (e) {
  //     print('Exception $e');
  //   }
  // }
  //
  // ///  get all User stream ... >>>
  // Stream<QuerySnapshot>? getAllUserList() {
  //   try {
  //     Stream<QuerySnapshot> snapshots =
  //         firebaseFireStore.collectionGroup("AppUser").snapshots();
  //     return snapshots;
  //   } catch (e) {
  //     print('Exception @DatabaseService/GetAllUserRequest $e');
  //     return null;
  //   }
  // }
  //
  // ///  Update AppUser ============>>>
  // updateAppUser(AppUser appUser) async {
  //   try {
  //     await firebaseFireStore
  //         .collection('AppUser')
  //         .doc(appUser.appUserId)
  //         .update(appUser.toJson());
  //   } catch (e) {
  //     print('Exception@UpdateUserProfile=>$e');
  //   }
  //   return;
  // }
  //
  // /// Delete Users =======>>>
  // deleteUser() async {
  //   try {
  //     print("delete user called");
  //
  //     await firebaseFireStore
  //         .collection("AppUser")
  //         .doc(locator<AuthServices>().appUser.appUserId)
  //         .delete();
  //   } catch (e) {
  //     print("delete user exceptional");
  //   }
  // }
  // /// Delete Users =======>>>
  // deleteProfile(String profileType) async {
  //   try {
  //     print("delete Profile Called");
  //
  //     await firebaseFireStore
  //         .collection("${profileType}")
  //         .doc(locator<AuthServices>().appUser.appUserId)
  //         .delete();
  //   } catch (e) {
  //     print("delete user exceptional");
  //   }
  // }
  //
  // ///  Registered Worker Request  >>>>
  // registerWorkerRequest(WorkerModel workerModel, String workerID) {
  //   print(">>>>>>>>>>>Register Worker Request Called >>>>");
  //   try {
  //     firebaseFireStore
  //         .collection("AllWorkers")
  //         .doc(workerID)
  //         .set(workerModel.toJson());
  //   } catch (e) {
  //     print('Exception $e');
  //   }
  // }
  //
  // ///  Get Worker Request  >>>>
  // Future<WorkerModel?> getWorkerData(String userId) async {
  //   try {
  //     DocumentSnapshot documentSnapshot =
  //         await firebaseFireStore.collection("AllWorkers").doc(userId).get();
  //     if (documentSnapshot.exists) {
  //       return WorkerModel.fromJson(
  //           documentSnapshot.data() as Map<String, dynamic>);
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     print('Error fetching Worker data: $e');
  //     return null;
  //   }
  // }
  //
  // ///  Registered Recruiter Request  >>>>
  // registerRecruiterRequest(RecruiterModel recruiterModel, String recruiterID) {
  //   print(">>>>>>>>>>> Register Recruiter Request Called >>>>");
  //   try {
  //     firebaseFireStore
  //         .collection("AllRecruiter")
  //         .doc(recruiterID)
  //         .set(recruiterModel.toJson());
  //   } catch (e) {
  //     print('Exception $e');
  //   }
  // }
  //
  // ///  Get Recruiter Request  >>>>
  // Future<RecruiterModel?> getRecruiterData(String userId) async {
  //   try {
  //     DocumentSnapshot documentSnapshot =
  //         await firebaseFireStore.collection("AllRecruiter").doc(userId).get();
  //     if (documentSnapshot.exists) {
  //       return RecruiterModel.fromJson(
  //           documentSnapshot.data() as Map<String, dynamic>);
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     print('Error fetching recruiter data: $e');
  //     return null;
  //   }
  // }
  //
  // ///  get all Worker Request stream ... >>>
  // Stream<QuerySnapshot>? getAllWorkerRequests() {
  //   try {
  //     Stream<QuerySnapshot> snapshots =
  //         firebaseFireStore.collectionGroup("AllWorkers").snapshots();
  //     return snapshots;
  //   } catch (e) {
  //     print('Exception @DatabaseService/GetAllWorkers $e');
  //     return null;
  //   }
  // }
  //
  // ///  get all Recruiter Request stream ... >>>
  // Stream<QuerySnapshot>? getAllRecruiterRequests() {
  //   try {
  //     Stream<QuerySnapshot> snapshots =
  //         firebaseFireStore.collectionGroup("AllRecruiter").snapshots();
  //     return snapshots;
  //   } catch (e) {
  //     print('Exception @DatabaseService/GetAllRecruiter $e');
  //     return null;
  //   }
  // }
  //
  // ///  Update Worker Request =====>>>
  // UpdateWorkerRequest(WorkerModel workerModel, workerID) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('AllWorkers')
  //         .doc(workerID)
  //         .update({'workerStatus': workerModel.workerStatus});
  //   } catch (e) {
  //     print('Exception@UpdateWorkerStatus=>$e');
  //   }
  // }
  //
  // ///  Update App User Request =====>>>
  // UpdateAppUser(AppUser appUser, userID) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('AppUser')
  //         .doc(userID)
  //         .update({'isUser': appUser.isUser});
  //   } catch (e) {
  //     print('Exception@UpdateAppUserStatus=>$e');
  //   }
  // }
  //
  // ///  Update Order Request =====>>>
  // UpdateOrderRequest(OrderModel orderModel, orderID) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('AllOrders')
  //         .doc(orderID)
  //         .update({'orderStatus': orderModel.orderStatus,
  //                   'feedBack': orderModel.feedBack,
  //                   'totalRating': orderModel.totalRating,
  //     });
  //   } catch (e) {
  //     print('Exception@UpdateOrderStatus=>$e');
  //   }
  // }
  //
  // ///  Update Order Request =====>>>
  // UpdateDeliverOrder(OrderModel orderModel, orderID) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('AllOrders')
  //         .doc(orderID)
  //         .update({'isDelivered': orderModel.isDelivered});
  //   } catch (e) {
  //     print('Exception@UpdateDeliveredOrderStatus=>$e');
  //   }
  // }
  // ///  Update recruiter Request =====>>>
  // UpdateRecruiterRequest(RecruiterModel recruiterModel, recruiterID) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('AllRecruiter')
  //         .doc(recruiterID)
  //         .update({'recruiterStatus': recruiterModel.recruiterStatus});
  //   } catch (e) {
  //     print('Exception@UpdateReceuiterStatus=>$e');
  //   }
  // }
  //
  // ///  Users Chat   >>>>
  // userChat(ChatModel chatModel, toUserId) async {
  //   try {
  //     await firebaseFireStore
  //         .collection("Conversations")
  //         .doc(currentAppUser.appUser.appUserId)
  //         .collection("Chats")
  //         .doc(toUserId)
  //         .collection("messages")
  //         .add(chatModel.toJson());
  //
  //     ///
  //     /// to user message
  //     ///
  //     await firebaseFireStore
  //         .collection("Conversations")
  //         .doc(toUserId)
  //         .collection("Chats")
  //         .doc("${currentAppUser.appUser.appUserId}")
  //         .collection("messages")
  //         .add(chatModel.toJson());
  //   } catch (e) {
  //     print('Exception $e');
  //   }
  // }
  // /// add user messages Chat   >>>>
  // addUserMessage(ChatModel chatModel, toUserId, currentChatUser,currentChat) async {
  //   try {
  //     /// From User message
  //     await firebaseFireStore
  //         .collection("Conversations")
  //         .doc("${currentAppUser.appUser.appUserId}")
  //         .collection("Chats")
  //         .doc("$toUserId")
  //         .collection("messages")
  //         .add(chatModel.toJson());
  //     await firebaseFireStore
  //         .collection("Conversations")
  //         .doc("${currentAppUser.appUser.appUserId}")
  //         .collection("Chats")
  //         .doc("$toUserId")
  //         .set(currentChat.toJson());
  //
  //     /// to user message
  //     await firebaseFireStore
  //         .collection("Conversations")
  //         .doc("$toUserId")
  //         .collection("Chats")
  //         .doc("${currentAppUser.appUser.appUserId}")
  //         .collection("messages")
  //         .add(chatModel.toJson());
  //     await firebaseFireStore
  //         .collection("Conversations")
  //         .doc("$toUserId")
  //         .collection("Chats")
  //         .doc("${currentAppUser.appUser.appUserId}")
  //         .set(currentChatUser.toJson());
  //   } catch (e) {
  //     print('Exception@sentUserMessage$e');
  //   }
  // }
  // ///  Update Read Messages Status ============>>>
  // UpdateIsReadMessage(ChatID, String isRead) async {
  //   print("Employer ID is :: ${ChatID}");
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('Conversations')
  //         .doc(currentAppUser.appUser.appUserId)
  //         .collection('Chats')
  //         .doc(ChatID)
  //         .update({'isRead': '$isRead'});
  //
  //     await FirebaseFirestore.instance
  //         .collection('Conversations')
  //         .doc(ChatID)
  //         .collection('Chats')
  //         .doc(currentAppUser.appUser.appUserId).collection("messages").where('isRead',isEqualTo: "false").
  //     get().then((doc){(doc.docs.forEach((element) =>
  //         element.reference.update({'isRead': 'true'})));
  //     });
  //     // .update({'isRead': '$isRead'});
  //   } catch (e) {
  //     print('Exception@UpdateIsReadMessageStatus=>$e');
  //   }
  // }
  // ///  Update Read Messages Status ============>>>
  // UpdateReadMessage(chatID, String isRead) async {
  //   print("Employer ID is :: ${chatID}");
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('Conversations')
  //         .doc(chatID)
  //         .collection('Chats')
  //         .doc(currentAppUser.appUser.appUserId)
  //         .update({'isRead': '$isRead'});
  //   } catch (e) {
  //     print('Exception@UpdateIsReadMessageStatus=>$e');
  //   }
  // }
  //
  //
  // ///
  // ///  Register Notifications  >>>>
  // ///
  // throughNotification(NotificationModel notificationModel) {
  //   notificationModel.notificationID = DateTime.now().microsecondsSinceEpoch.toString();
  //   try {
  //     firebaseFireStore
  //         .collection("AllNotification")
  //         .doc(notificationModel.notificationID)
  //         .set(notificationModel.toJson());
  //     print("Notification ID is >>>>${notificationModel.notificationID}");
  //   } catch (e) {
  //     print('Exception $e');
  //   }
  // }
  //
  // ///
  // /// get all Notification Data  stream
  // ///
  // Stream<QuerySnapshot>? getNotificationData() {
  //   try {
  //     Stream<QuerySnapshot> snapshots =
  //     firebaseFireStore.collectionGroup("AllNotification").snapshots();
  //     print("Snapshot Length is >>>${snapshots.length.toString()}");
  //     return snapshots;
  //   } catch (e) {
  //     print('Exception @DatabaseService/GetAllNotificationData $e');
  //     return null;
  //   }
  // }
  //
  // ///
  // ///  Register Order  >>>>
  // ///
  // registerOrder(OrderModel orderModel) {
  //   orderModel.orderId = DateTime.now().microsecondsSinceEpoch.toString();
  //   try {
  //     firebaseFireStore
  //         .collection("AllOrders")
  //         .doc(orderModel.orderId)
  //         .set(orderModel.toJson());
  //   } catch (e) {
  //     print('Exception $e');
  //   }
  // }
  //
  // ///
  // /// get all Orders Data  stream
  // ///
  // Stream<QuerySnapshot>? getOrders() {
  //   try {
  //     Stream<QuerySnapshot> snapshots =
  //     firebaseFireStore.collectionGroup("AllOrders").snapshots();
  //     print("Snapshot Length is >>>${snapshots.length.toString()}");
  //     return snapshots;
  //   } catch (e) {
  //     print('Exception @DatabaseService/GetAllOrdersData $e');
  //     return null;
  //   }
  // }
  //
  //
  // ///  Update AppUser =====>>>
  // UpdateFavoriteList(AppUser appUser, String userID) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('AppUser')
  //         .doc(userID)
  //         .update({'favWorkerList': appUser.favWorkerList});
  //   } catch (e) {
  //     print('Exception@UpdateAppUserStatus=>$e');
  //   }
  // }
  //
}
