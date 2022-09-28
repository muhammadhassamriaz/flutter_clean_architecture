class UserModel {
  final String id;
  final String name;
  final String gender;
  final String status;
  final String partnerId;
  final String createdAt;
  final List<int> statistics;
  UserModel({
    required this.id,
    required this.name,
    required this.gender,
    required this.status,
    required this.partnerId,
    required this.createdAt,
    required this.statistics,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? gender,
    String? status,
    String? partnerId,
    String? createdAt,
    List<int>? statistics,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      gender: gender ?? this.gender,
      status: status ?? this.status,
      partnerId: partnerId ?? this.partnerId,
      createdAt: createdAt ?? this.createdAt,
      statistics: statistics ?? this.statistics,
    );
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String? ?? '',
      name: map['name'] as String? ?? '',
      gender: map['gender'] as String? ?? '',
      status: map['status'] as String? ?? '',
      partnerId: map['partner_id'] as String? ?? '',
      createdAt: map['created_at'] as String? ?? '',
      statistics: List<int>.from(
        map['statistics'] as List<int>? ?? [],
      ),
    );
  }

  UserModel toDomain() => UserModel(
        id: id,
        name: name,
        gender: gender,
        status: status,
        partnerId: partnerId,
        createdAt: createdAt,
        statistics: statistics,
      );
}

class AllUsers {
  final int total;
  final List<UserModel> users;
  AllUsers({
    required this.total,
    required this.users,
  });

  AllUsers copyWith({
    int? total,
    List<UserModel>? users,
  }) {
    return AllUsers(
      total: total ?? this.total,
      users: users ?? this.users,
    );
  }

  factory AllUsers.fromMap(Map<String, dynamic> map) {
    return AllUsers(
      total: map['total'] as int? ?? 0,
      users: List<UserModel>.from(
        (map['users'] as List<int>? ?? []).map<UserModel>(
          (x) => UserModel.fromMap(x as Map<String, dynamic>? ?? {}).toDomain(),
        ),
      ),
    );
  }

  AllUsers toDomain() => AllUsers(total: total, users: users);
}
