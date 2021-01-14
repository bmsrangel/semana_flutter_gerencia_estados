import 'package:mobx/mobx.dart';

class AppStore {
  final counter = Observable<int>(0);
  Action increment;

  AppStore() {
    increment = Action(_increment);
  }

  _increment() {
    counter.value++;
  }
}
