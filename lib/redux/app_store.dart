// Normalmente a Action e o State devem ser classes
// AppState precisa ser imutável

import 'package:state_redux_bloc/redux/store.dart';

enum AppAction {
  increment,
  decrement,
}

class AppState {
  AppState({this.value = 0});

  final int value;

  operator +(int value) {
    return AppState(value: this.value + value);
  }

  operator -(int value) {
    return AppState(value: this.value + value);
  }

  @override
  String toString() {
    return '$value';
  }
}

AppState _reducer(AppState state, AppAction action) {
  if (action == AppAction.increment) {
    // return AppState(value: state.value + 1);
    return state + 1;
  } else {
    return state - 1;
  }
}

final appStore = Store<AppAction, AppState>(
  initialState: AppState(),
  reducer: _reducer,
);
