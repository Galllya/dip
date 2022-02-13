import 'package:study/models/app_user.dart';
import 'package:study/resourses/auth_methods.dart';

class UserProvider {
  final AuthMethods authMethods = AuthMethods();

  Future<AppUser> getUser() async {
    AppUser user = await authMethods.getUserDetails();
    return user;
  }
}
