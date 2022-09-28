import 'package:owwn_coding_challenge/domain/entities/failures/display_failure.dart';

enum UnauthorizationFailure { unknown }

class AuthorizationFailure {
  const AuthorizationFailure.unknown({this.cause})
      : _type = UnauthorizationFailure.unknown;

  final UnauthorizationFailure _type;
  final Object? cause;

  DisplayableFailure displayableFailure() {
    switch (_type) {
      case UnauthorizationFailure.unknown:
        return DisplayableFailure.commonError();
    }
  }

  @override
  String toString() {
    return 'Unauthorization{cause: $cause}';
  }
}
