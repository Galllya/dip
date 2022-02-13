import 'dart:typed_data';

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
}
