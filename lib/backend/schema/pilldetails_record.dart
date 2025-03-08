import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PilldetailsRecord extends FirestoreRecord {
  PilldetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Pillname" field.
  String? _pillname;
  String get pillname => _pillname ?? '';
  bool hasPillname() => _pillname != null;

  // "Howoften" field.
  List<String>? _howoften;
  List<String> get howoften => _howoften ?? const [];
  bool hasHowoften() => _howoften != null;

  // "Day" field.
  List<String>? _day;
  List<String> get day => _day ?? const [];
  bool hasDay() => _day != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "time1" field.
  DateTime? _time1;
  DateTime? get time1 => _time1;
  bool hasTime1() => _time1 != null;

  // "time2" field.
  DateTime? _time2;
  DateTime? get time2 => _time2;
  bool hasTime2() => _time2 != null;

  // "time3" field.
  DateTime? _time3;
  DateTime? get time3 => _time3;
  bool hasTime3() => _time3 != null;

  // "time4" field.
  DateTime? _time4;
  DateTime? get time4 => _time4;
  bool hasTime4() => _time4 != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "Pilltype" field.
  String? _pilltype;
  String get pilltype => _pilltype ?? '';
  bool hasPilltype() => _pilltype != null;

  // "doctor_name" field.
  String? _doctorName;
  String get doctorName => _doctorName ?? '';
  bool hasDoctorName() => _doctorName != null;

  // "specialization" field.
  String? _specialization;
  String get specialization => _specialization ?? '';
  bool hasSpecialization() => _specialization != null;

  // "hospital_name" field.
  String? _hospitalName;
  String get hospitalName => _hospitalName ?? '';
  bool hasHospitalName() => _hospitalName != null;

  void _initializeFields() {
    _pillname = snapshotData['Pillname'] as String?;
    _howoften = getDataList(snapshotData['Howoften']);
    _day = getDataList(snapshotData['Day']);
    _user = snapshotData['user'] as DocumentReference?;
    _condition = snapshotData['condition'] as String?;
    _time1 = snapshotData['time1'] as DateTime?;
    _time2 = snapshotData['time2'] as DateTime?;
    _time3 = snapshotData['time3'] as DateTime?;
    _time4 = snapshotData['time4'] as DateTime?;
    _amount = castToType<int>(snapshotData['amount']);
    _uid = snapshotData['uid'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _pilltype = snapshotData['Pilltype'] as String?;
    _doctorName = snapshotData['doctor_name'] as String?;
    _specialization = snapshotData['specialization'] as String?;
    _hospitalName = snapshotData['hospital_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pilldetails');

  static Stream<PilldetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PilldetailsRecord.fromSnapshot(s));

  static Future<PilldetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PilldetailsRecord.fromSnapshot(s));

  static PilldetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PilldetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PilldetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PilldetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PilldetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PilldetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPilldetailsRecordData({
  String? pillname,
  DocumentReference? user,
  String? condition,
  DateTime? time1,
  DateTime? time2,
  DateTime? time3,
  DateTime? time4,
  int? amount,
  String? uid,
  DateTime? date,
  String? pilltype,
  String? doctorName,
  String? specialization,
  String? hospitalName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Pillname': pillname,
      'user': user,
      'condition': condition,
      'time1': time1,
      'time2': time2,
      'time3': time3,
      'time4': time4,
      'amount': amount,
      'uid': uid,
      'date': date,
      'Pilltype': pilltype,
      'doctor_name': doctorName,
      'specialization': specialization,
      'hospital_name': hospitalName,
    }.withoutNulls,
  );

  return firestoreData;
}

class PilldetailsRecordDocumentEquality implements Equality<PilldetailsRecord> {
  const PilldetailsRecordDocumentEquality();

  @override
  bool equals(PilldetailsRecord? e1, PilldetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pillname == e2?.pillname &&
        listEquality.equals(e1?.howoften, e2?.howoften) &&
        listEquality.equals(e1?.day, e2?.day) &&
        e1?.user == e2?.user &&
        e1?.condition == e2?.condition &&
        e1?.time1 == e2?.time1 &&
        e1?.time2 == e2?.time2 &&
        e1?.time3 == e2?.time3 &&
        e1?.time4 == e2?.time4 &&
        e1?.amount == e2?.amount &&
        e1?.uid == e2?.uid &&
        e1?.date == e2?.date &&
        e1?.pilltype == e2?.pilltype &&
        e1?.doctorName == e2?.doctorName &&
        e1?.specialization == e2?.specialization &&
        e1?.hospitalName == e2?.hospitalName;
  }

  @override
  int hash(PilldetailsRecord? e) => const ListEquality().hash([
        e?.pillname,
        e?.howoften,
        e?.day,
        e?.user,
        e?.condition,
        e?.time1,
        e?.time2,
        e?.time3,
        e?.time4,
        e?.amount,
        e?.uid,
        e?.date,
        e?.pilltype,
        e?.doctorName,
        e?.specialization,
        e?.hospitalName
      ]);

  @override
  bool isValidKey(Object? o) => o is PilldetailsRecord;
}
