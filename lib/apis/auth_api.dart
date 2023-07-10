abstract class IAuthAPI {
  void signUp();
}

class AuthAPI implements IAuthAPI {
  @override
  FutureEither<model.Session> login(
      {required String email, required String password}) async {
    try {
      final session = await _account.createEmailSession(
        email: email,
        password: password,
      );
      return right(session);
    } on AppwriteException catch (e, stackTrace) {
      return left(
        Failure(e.message ?? 'Some unexpected error occured', stackTrace),
      );
    } catch (e, stackTrace) {
      return left(
        Failure(e.toString(), stackTrace),
      );
}
