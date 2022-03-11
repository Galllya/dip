import 'dart:typed_data';

import 'package:study/models/another_user.dart';
import 'package:study/models/app_user.dart';
import 'package:study/resourses/auth_methods.dart';

class UserProvider {
  final AuthMethods authMethods = AuthMethods();

  Future<AppUser> getUser() async {
    AppUser user = await authMethods.getUserDetails();
    return user;
  }

  Future<void> signOut() async {
    await authMethods.signOut();
  }

  Future<void> updateUser({
    required AppUser appUser,
    Uint8List? file,
  }) async {
    await authMethods.updateUser(appUser: appUser, file: file);
  }

  Future<List<AppUser>> getAllUsers({
    required String searchText,
  }) async {
    return await authMethods.getAllUsers(
      seatchText: searchText,
    );
  }

  Future<void> folow({
    required String anotherUserUID,
    required List<String> anotherUserSubscribers,
    required List<String> curUserSubscrip,
    required int points,
    required int realPoints,
    Uint8List? file,
  }) async {
    await authMethods.folow(
      anotherUserUID: anotherUserUID,
      anotherUserSubscribers: anotherUserSubscribers,
      curUserSubscrip: curUserSubscrip,
      points: points,
      realPoints: realPoints,
    );
  }

  Future<List<AnotherUser>> getUsers({
    required List<String> uid,
  }) async {
    return await authMethods.getUser(
      uid: uid,
    );
  }

  Future<AppUser> getAnotUser({
    required String uid,
  }) async {
    AppUser user = await authMethods.getAnotUser(uid: uid);
    return user;
  }

  Future<void> unFolow({
    required String anotherUserUID,
    required List<String> anotherUserSubscribers,
    required List<String> curUserSubscrip,
    Uint8List? file,
    required int points,
    required int realPoints,
  }) async {
    await authMethods.unFolow(
      anotherUserUID: anotherUserUID,
      anotherUserSubscribers: anotherUserSubscribers,
      curUserSubscrip: curUserSubscrip,
      points: points,
      realPoints: realPoints,
    );
  }

  Future<List<AnotherUser>> getTopUsers({
    required String title,
  }) async {
    return await authMethods.getTopUsers(title: title);
  }

  Future<void> shop({
    required int realPoints,
    required List<bool> buied,
  }) async {
    await authMethods.shop(realPoints: realPoints, buied: buied);
  }
}
