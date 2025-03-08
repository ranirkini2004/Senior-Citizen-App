// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListPillsStruct extends FFFirebaseStruct {
  ListPillsStruct({
    String? pillname,
    List<String>? days,
    List<String>? howOften,
    DocumentReference? user,
    DateTime? startdate,
    DateTime? enddate,
    int? amount,
    DateTime? time1,
    DateTime? time2,
    DateTime? time3,
    DateTime? time4,
    String? pilltype,
    DateTime? start,
    DateTime? end,
    String? condition,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _pillname = pillname,
        _days = days,
        _howOften = howOften,
        _user = user,
        _startdate = startdate,
        _enddate = enddate,
        _amount = amount,
        _time1 = time1,
        _time2 = time2,
        _time3 = time3,
        _time4 = time4,
        _pilltype = pilltype,
        _start = start,
        _end = end,
        _condition = condition,
        super(firestoreUtilData);

  // "pillname" field.
  String? _pillname;
  String get pillname => _pillname ?? '';
  set pillname(String? val) => _pillname = val;

  bool hasPillname() => _pillname != null;

  // "days" field.
  List<String>? _days;
  List<String> get days => _days ?? const [];
  set days(List<String>? val) => _days = val;

  void updateDays(Function(List<String>) updateFn) {
    updateFn(_days ??= []);
  }

  bool hasDays() => _days != null;

  // "howOften" field.
  List<String>? _howOften;
  List<String> get howOften => _howOften ?? const [];
  set howOften(List<String>? val) => _howOften = val;

  void updateHowOften(Function(List<String>) updateFn) {
    updateFn(_howOften ??= []);
  }

  bool hasHowOften() => _howOften != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  set user(DocumentReference? val) => _user = val;

  bool hasUser() => _user != null;

  // "startdate" field.
  DateTime? _startdate;
  DateTime? get startdate => _startdate;
  set startdate(DateTime? val) => _startdate = val;

  bool hasStartdate() => _startdate != null;

  // "enddate" field.
  DateTime? _enddate;
  DateTime? get enddate => _enddate;
  set enddate(DateTime? val) => _enddate = val;

  bool hasEnddate() => _enddate != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  set amount(int? val) => _amount = val;

  void incrementAmount(int amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "time1" field.
  DateTime? _time1;
  DateTime? get time1 => _time1;
  set time1(DateTime? val) => _time1 = val;

  bool hasTime1() => _time1 != null;

  // "time2" field.
  DateTime? _time2;
  DateTime? get time2 => _time2;
  set time2(DateTime? val) => _time2 = val;

  bool hasTime2() => _time2 != null;

  // "time3" field.
  DateTime? _time3;
  DateTime? get time3 => _time3;
  set time3(DateTime? val) => _time3 = val;

  bool hasTime3() => _time3 != null;

  // "time4" field.
  DateTime? _time4;
  DateTime? get time4 => _time4;
  set time4(DateTime? val) => _time4 = val;

  bool hasTime4() => _time4 != null;

  // "pilltype" field.
  String? _pilltype;
  String get pilltype => _pilltype ?? '';
  set pilltype(String? val) => _pilltype = val;

  bool hasPilltype() => _pilltype != null;

  // "start" field.
  DateTime? _start;
  DateTime? get start => _start;
  set start(DateTime? val) => _start = val;

  bool hasStart() => _start != null;

  // "end" field.
  DateTime? _end;
  DateTime? get end => _end;
  set end(DateTime? val) => _end = val;

  bool hasEnd() => _end != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  set condition(String? val) => _condition = val;

  bool hasCondition() => _condition != null;

  static ListPillsStruct fromMap(Map<String, dynamic> data) => ListPillsStruct(
        pillname: data['pillname'] as String?,
        days: getDataList(data['days']),
        howOften: getDataList(data['howOften']),
        user: data['user'] as DocumentReference?,
        startdate: data['startdate'] as DateTime?,
        enddate: data['enddate'] as DateTime?,
        amount: castToType<int>(data['amount']),
        time1: data['time1'] as DateTime?,
        time2: data['time2'] as DateTime?,
        time3: data['time3'] as DateTime?,
        time4: data['time4'] as DateTime?,
        pilltype: data['pilltype'] as String?,
        start: data['start'] as DateTime?,
        end: data['end'] as DateTime?,
        condition: data['condition'] as String?,
      );

  static ListPillsStruct? maybeFromMap(dynamic data) => data is Map
      ? ListPillsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pillname': _pillname,
        'days': _days,
        'howOften': _howOften,
        'user': _user,
        'startdate': _startdate,
        'enddate': _enddate,
        'amount': _amount,
        'time1': _time1,
        'time2': _time2,
        'time3': _time3,
        'time4': _time4,
        'pilltype': _pilltype,
        'start': _start,
        'end': _end,
        'condition': _condition,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pillname': serializeParam(
          _pillname,
          ParamType.String,
        ),
        'days': serializeParam(
          _days,
          ParamType.String,
          isList: true,
        ),
        'howOften': serializeParam(
          _howOften,
          ParamType.String,
          isList: true,
        ),
        'user': serializeParam(
          _user,
          ParamType.DocumentReference,
        ),
        'startdate': serializeParam(
          _startdate,
          ParamType.DateTime,
        ),
        'enddate': serializeParam(
          _enddate,
          ParamType.DateTime,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.int,
        ),
        'time1': serializeParam(
          _time1,
          ParamType.DateTime,
        ),
        'time2': serializeParam(
          _time2,
          ParamType.DateTime,
        ),
        'time3': serializeParam(
          _time3,
          ParamType.DateTime,
        ),
        'time4': serializeParam(
          _time4,
          ParamType.DateTime,
        ),
        'pilltype': serializeParam(
          _pilltype,
          ParamType.String,
        ),
        'start': serializeParam(
          _start,
          ParamType.DateTime,
        ),
        'end': serializeParam(
          _end,
          ParamType.DateTime,
        ),
        'condition': serializeParam(
          _condition,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListPillsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListPillsStruct(
        pillname: deserializeParam(
          data['pillname'],
          ParamType.String,
          false,
        ),
        days: deserializeParam<String>(
          data['days'],
          ParamType.String,
          true,
        ),
        howOften: deserializeParam<String>(
          data['howOften'],
          ParamType.String,
          true,
        ),
        user: deserializeParam(
          data['user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        startdate: deserializeParam(
          data['startdate'],
          ParamType.DateTime,
          false,
        ),
        enddate: deserializeParam(
          data['enddate'],
          ParamType.DateTime,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.int,
          false,
        ),
        time1: deserializeParam(
          data['time1'],
          ParamType.DateTime,
          false,
        ),
        time2: deserializeParam(
          data['time2'],
          ParamType.DateTime,
          false,
        ),
        time3: deserializeParam(
          data['time3'],
          ParamType.DateTime,
          false,
        ),
        time4: deserializeParam(
          data['time4'],
          ParamType.DateTime,
          false,
        ),
        pilltype: deserializeParam(
          data['pilltype'],
          ParamType.String,
          false,
        ),
        start: deserializeParam(
          data['start'],
          ParamType.DateTime,
          false,
        ),
        end: deserializeParam(
          data['end'],
          ParamType.DateTime,
          false,
        ),
        condition: deserializeParam(
          data['condition'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListPillsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListPillsStruct &&
        pillname == other.pillname &&
        listEquality.equals(days, other.days) &&
        listEquality.equals(howOften, other.howOften) &&
        user == other.user &&
        startdate == other.startdate &&
        enddate == other.enddate &&
        amount == other.amount &&
        time1 == other.time1 &&
        time2 == other.time2 &&
        time3 == other.time3 &&
        time4 == other.time4 &&
        pilltype == other.pilltype &&
        start == other.start &&
        end == other.end &&
        condition == other.condition;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pillname,
        days,
        howOften,
        user,
        startdate,
        enddate,
        amount,
        time1,
        time2,
        time3,
        time4,
        pilltype,
        start,
        end,
        condition
      ]);
}

ListPillsStruct createListPillsStruct({
  String? pillname,
  DocumentReference? user,
  DateTime? startdate,
  DateTime? enddate,
  int? amount,
  DateTime? time1,
  DateTime? time2,
  DateTime? time3,
  DateTime? time4,
  String? pilltype,
  DateTime? start,
  DateTime? end,
  String? condition,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListPillsStruct(
      pillname: pillname,
      user: user,
      startdate: startdate,
      enddate: enddate,
      amount: amount,
      time1: time1,
      time2: time2,
      time3: time3,
      time4: time4,
      pilltype: pilltype,
      start: start,
      end: end,
      condition: condition,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListPillsStruct? updateListPillsStruct(
  ListPillsStruct? listPills, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listPills
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListPillsStructData(
  Map<String, dynamic> firestoreData,
  ListPillsStruct? listPills,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listPills == null) {
    return;
  }
  if (listPills.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listPills.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listPillsData = getListPillsFirestoreData(listPills, forFieldValue);
  final nestedData = listPillsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listPills.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListPillsFirestoreData(
  ListPillsStruct? listPills, [
  bool forFieldValue = false,
]) {
  if (listPills == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listPills.toMap());

  // Add any Firestore field values
  listPills.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListPillsListFirestoreData(
  List<ListPillsStruct>? listPillss,
) =>
    listPillss?.map((e) => getListPillsFirestoreData(e, true)).toList() ?? [];
