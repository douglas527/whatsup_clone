class UserModel {
  final String name;
  final String uid;
  final String profilePic;
  final bool isOnLine;
  final String phoneNumber;
  final List<String> groupId;

  UserModel(
      {required this.name,
      required this.groupId,
      required this.phoneNumber,
      required this.uid,
      required this.profilePic,
      required this.isOnLine});
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'uid': uid,
      'profilePic': profilePic,
      'isOnLine': isOnLine,
      'phoneNumber': phoneNumber,
      'groupId': groupId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      uid: map['uid'] as String,
      profilePic: map['profilePic'] as String,
      isOnLine: map['isOnLine'] as bool,
      phoneNumber: map['phoneNumber'] as String,
      groupId: map['groupId'] as List<String>,
    );
  }
}
