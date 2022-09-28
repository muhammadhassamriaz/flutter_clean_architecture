import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:owwn_coding_challenge/data/http/http_service.dart';
import 'package:owwn_coding_challenge/data/models/auth_model.dart';
import 'package:owwn_coding_challenge/data/models/user_model.dart';
import 'package:owwn_coding_challenge/domain/entities/failures/get_user_list_failure.dart';
import 'package:owwn_coding_challenge/domain/repositories/user_respository.dart';
import 'package:owwn_coding_challenge/global.dart';

class UserRestApiRepository implements UserRepository {
  final HttpService _httpService;
  UserRestApiRepository(this._httpService);
  @override
  Future<Either<GetUserListFailure, AllUsers>> getAllUsersInfo({
    required String pageNo,
  }) async {
    try {
      final Response response = await _httpService.get(
        "${UrlConstants.getUsers}?page=$pageNo",
      );
      return right(
        AllUsers.fromMap(jsonDecode(response.body) as Map<String, dynamic>)
            .toDomain(),
      );
    } catch (ex) {
      log(ex.toString());
      return left(const GetUserListFailure.unknown());
    }
  }

  @override
  Future<Either<GetUserListFailure, AuthModel>> authentication() async {
    throw UnimplementedError();
  }

  @override
  Future<Either<GetUserListFailure, AuthModel>>
      refreshAuthenticationToken() async {
    throw UnimplementedError();
  }
}
