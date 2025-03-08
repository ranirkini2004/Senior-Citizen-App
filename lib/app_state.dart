import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _pillname = await secureStorage.getString('ff_pillname') ?? _pillname;
    });
    await _safeInitAsync(() async {
      _condition = await secureStorage.getString('ff_condition') ?? _condition;
    });
    await _safeInitAsync(() async {
      _howOften = await secureStorage.getStringList('ff_howOften') ?? _howOften;
    });
    await _safeInitAsync(() async {
      _day = await secureStorage.getStringList('ff_day') ?? _day;
    });
    await _safeInitAsync(() async {
      _user = (await secureStorage.getString('ff_user'))?.ref ?? _user;
    });
    await _safeInitAsync(() async {
      _startdate = await secureStorage.read(key: 'ff_startdate') != null
          ? DateTime.fromMillisecondsSinceEpoch(
              (await secureStorage.getInt('ff_startdate'))!)
          : _startdate;
    });
    await _safeInitAsync(() async {
      _amount = await secureStorage.getInt('ff_amount') ?? _amount;
    });
    await _safeInitAsync(() async {
      _Pilltype = await secureStorage.getString('ff_Pilltype') ?? _Pilltype;
    });
    await _safeInitAsync(() async {
      _pillList = (await secureStorage.getStringList('ff_pillList'))
              ?.map((x) {
                try {
                  return ListPillsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _pillList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _pillname = '';
  String get pillname => _pillname;
  set pillname(String value) {
    _pillname = value;
    secureStorage.setString('ff_pillname', value);
  }

  void deletePillname() {
    secureStorage.delete(key: 'ff_pillname');
  }

  String _condition = '';
  String get condition => _condition;
  set condition(String value) {
    _condition = value;
    secureStorage.setString('ff_condition', value);
  }

  void deleteCondition() {
    secureStorage.delete(key: 'ff_condition');
  }

  List<String> _howOften = [];
  List<String> get howOften => _howOften;
  set howOften(List<String> value) {
    _howOften = value;
    secureStorage.setStringList('ff_howOften', value);
  }

  void deleteHowOften() {
    secureStorage.delete(key: 'ff_howOften');
  }

  void addToHowOften(String value) {
    howOften.add(value);
    secureStorage.setStringList('ff_howOften', _howOften);
  }

  void removeFromHowOften(String value) {
    howOften.remove(value);
    secureStorage.setStringList('ff_howOften', _howOften);
  }

  void removeAtIndexFromHowOften(int index) {
    howOften.removeAt(index);
    secureStorage.setStringList('ff_howOften', _howOften);
  }

  void updateHowOftenAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    howOften[index] = updateFn(_howOften[index]);
    secureStorage.setStringList('ff_howOften', _howOften);
  }

  void insertAtIndexInHowOften(int index, String value) {
    howOften.insert(index, value);
    secureStorage.setStringList('ff_howOften', _howOften);
  }

  List<String> _day = [];
  List<String> get day => _day;
  set day(List<String> value) {
    _day = value;
    secureStorage.setStringList('ff_day', value);
  }

  void deleteDay() {
    secureStorage.delete(key: 'ff_day');
  }

  void addToDay(String value) {
    day.add(value);
    secureStorage.setStringList('ff_day', _day);
  }

  void removeFromDay(String value) {
    day.remove(value);
    secureStorage.setStringList('ff_day', _day);
  }

  void removeAtIndexFromDay(int index) {
    day.removeAt(index);
    secureStorage.setStringList('ff_day', _day);
  }

  void updateDayAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    day[index] = updateFn(_day[index]);
    secureStorage.setStringList('ff_day', _day);
  }

  void insertAtIndexInDay(int index, String value) {
    day.insert(index, value);
    secureStorage.setStringList('ff_day', _day);
  }

  DocumentReference? _user = FirebaseFirestore.instance.doc('/users/uid');
  DocumentReference? get user => _user;
  set user(DocumentReference? value) {
    _user = value;
    value != null
        ? secureStorage.setString('ff_user', value.path)
        : secureStorage.remove('ff_user');
  }

  void deleteUser() {
    secureStorage.delete(key: 'ff_user');
  }

  String _resetemail = '';
  String get resetemail => _resetemail;
  set resetemail(String value) {
    _resetemail = value;
  }

  String _verifyemail = '';
  String get verifyemail => _verifyemail;
  set verifyemail(String value) {
    _verifyemail = value;
  }

  DateTime? _startdate = DateTime.fromMillisecondsSinceEpoch(1733051400000);
  DateTime? get startdate => _startdate;
  set startdate(DateTime? value) {
    _startdate = value;
    value != null
        ? secureStorage.setInt('ff_startdate', value.millisecondsSinceEpoch)
        : secureStorage.remove('ff_startdate');
  }

  void deleteStartdate() {
    secureStorage.delete(key: 'ff_startdate');
  }

  int _amount = 0;
  int get amount => _amount;
  set amount(int value) {
    _amount = value;
    secureStorage.setInt('ff_amount', value);
  }

  void deleteAmount() {
    secureStorage.delete(key: 'ff_amount');
  }

  String _Pilltype = '';
  String get Pilltype => _Pilltype;
  set Pilltype(String value) {
    _Pilltype = value;
    secureStorage.setString('ff_Pilltype', value);
  }

  void deletePilltype() {
    secureStorage.delete(key: 'ff_Pilltype');
  }

  List<ListPillsStruct> _pillList = [];
  List<ListPillsStruct> get pillList => _pillList;
  set pillList(List<ListPillsStruct> value) {
    _pillList = value;
    secureStorage.setStringList(
        'ff_pillList', value.map((x) => x.serialize()).toList());
  }

  void deletePillList() {
    secureStorage.delete(key: 'ff_pillList');
  }

  void addToPillList(ListPillsStruct value) {
    pillList.add(value);
    secureStorage.setStringList(
        'ff_pillList', _pillList.map((x) => x.serialize()).toList());
  }

  void removeFromPillList(ListPillsStruct value) {
    pillList.remove(value);
    secureStorage.setStringList(
        'ff_pillList', _pillList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromPillList(int index) {
    pillList.removeAt(index);
    secureStorage.setStringList(
        'ff_pillList', _pillList.map((x) => x.serialize()).toList());
  }

  void updatePillListAtIndex(
    int index,
    ListPillsStruct Function(ListPillsStruct) updateFn,
  ) {
    pillList[index] = updateFn(_pillList[index]);
    secureStorage.setStringList(
        'ff_pillList', _pillList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInPillList(int index, ListPillsStruct value) {
    pillList.insert(index, value);
    secureStorage.setStringList(
        'ff_pillList', _pillList.map((x) => x.serialize()).toList());
  }

  String _doctorname = '';
  String get doctorname => _doctorname;
  set doctorname(String value) {
    _doctorname = value;
  }

  String _specialization = '';
  String get specialization => _specialization;
  set specialization(String value) {
    _specialization = value;
  }

  String _hospitalname = '';
  String get hospitalname => _hospitalname;
  set hospitalname(String value) {
    _hospitalname = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
