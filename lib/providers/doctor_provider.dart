import 'dart:collection';

import 'package:arena/models/doctor.dart';
import 'package:flutter/cupertino.dart';

class DoctorProvider extends ChangeNotifier {
  // Doctor _user = Doctor(
  //   id: '',
  //   name: '',
  //   email: '',
  //   password: '',
  // );

  List _listData = [];

  UnmodifiableListView get listData {
    return UnmodifiableListView(_listData);
  }

  void setDoctor(String user) {
    _listData.add(user);
    // _user = Doctor.fromJson(user);
    notifyListeners();
  }
}
