import 'package:owwn_coding_challenge/domain/entities/failures/display_failure.dart';

enum GetUserListFailureType { unknown }

class GetUserListFailure {
  const GetUserListFailure.unknown({this.cause})
      : _type = GetUserListFailureType.unknown;

  final GetUserListFailureType _type;
  final Object? cause;

  DisplayableFailure displayableFailure() {
    switch (_type) {
      case GetUserListFailureType.unknown:
        return DisplayableFailure.commonError();
    }
  }

  @override
  String toString() {
    return 'GetUserListFailure{cause: $cause}';
  }
}
