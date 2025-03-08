import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "is_profile_completed" field.
  bool? _isProfileCompleted;
  bool get isProfileCompleted => _isProfileCompleted ?? false;
  bool hasIsProfileCompleted() => _isProfileCompleted != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "carfname" field.
  String? _carfname;
  String get carfname => _carfname ?? '';
  bool hasCarfname() => _carfname != null;

  // "carlname" field.
  String? _carlname;
  String get carlname => _carlname ?? '';
  bool hasCarlname() => _carlname != null;

  // "carphno" field.
  String? _carphno;
  String get carphno => _carphno ?? '';
  bool hasCarphno() => _carphno != null;

  // "cargender" field.
  String? _cargender;
  String get cargender => _cargender ?? '';
  bool hasCargender() => _cargender != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _createdTime = snapshotData['created_time'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _isProfileCompleted = snapshotData['is_profile_completed'] as bool?;
    _gender = snapshotData['gender'] as String?;
    _carfname = snapshotData['carfname'] as String?;
    _carlname = snapshotData['carlname'] as String?;
    _carphno = snapshotData['carphno'] as String?;
    _cargender = snapshotData['cargender'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? uid,
  String? phoneNumber,
  int? age,
  DateTime? createdTime,
  String? photoUrl,
  bool? isProfileCompleted,
  String? gender,
  String? carfname,
  String? carlname,
  String? carphno,
  String? cargender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'uid': uid,
      'phone_number': phoneNumber,
      'age': age,
      'created_time': createdTime,
      'photo_url': photoUrl,
      'is_profile_completed': isProfileCompleted,
      'gender': gender,
      'carfname': carfname,
      'carlname': carlname,
      'carphno': carphno,
      'cargender': cargender,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.age == e2?.age &&
        e1?.createdTime == e2?.createdTime &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.isProfileCompleted == e2?.isProfileCompleted &&
        e1?.gender == e2?.gender &&
        e1?.carfname == e2?.carfname &&
        e1?.carlname == e2?.carlname &&
        e1?.carphno == e2?.carphno &&
        e1?.cargender == e2?.cargender;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.uid,
        e?.phoneNumber,
        e?.age,
        e?.createdTime,
        e?.photoUrl,
        e?.isProfileCompleted,
        e?.gender,
        e?.carfname,
        e?.carlname,
        e?.carphno,
        e?.cargender
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
