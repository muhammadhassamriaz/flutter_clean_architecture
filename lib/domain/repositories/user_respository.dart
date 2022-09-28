import 'package:dartz/dartz.dart';
import 'package:owwn_coding_challenge/data/models/auth_model.dart';
import 'package:owwn_coding_challenge/data/models/user_model.dart';
import 'package:owwn_coding_challenge/domain/entities/failures/get_user_list_failure.dart';

abstract class UserRepository {
  Future<Either<GetUserListFailure, AllUsers>> getAllUsersInfo({
    required String pageNo,
  });

  Future<Either<GetUserListFailure, AuthModel>> authentication();
  Future<Either<GetUserListFailure, AuthModel>> refreshAuthenticationToken();
}
