import 'package:protos/protos.dart';

class AuthenticatedUserService extends AuthenticatedUserServiceBase {
  @override
  Future<AuthenticatedUser> getAuthenticatedUser(
    ServiceCall call,
    GetAuthenticatedUserById request,
  ) async {
    return AuthenticatedUser(
      id: 1,
      firstName: 'Jasurbek',
      lastName: 'Jakhongirov',
    );
  }
}
