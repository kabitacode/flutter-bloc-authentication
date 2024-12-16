import 'package:dartz/dartz.dart';

abstract class AuthApiServices {
  Future<Either> signIn();
}

class AuthApiServiceImpl extends AuthApiServices {
  @override
  Future<Either> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }
}
