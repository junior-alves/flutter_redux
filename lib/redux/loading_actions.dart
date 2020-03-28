import 'package:flutterreduxtest/model/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

class ToggleLoadingAction {
  ToggleLoadingAction();
}

ThunkAction<AppState> waitAndDispatch(int secondsToWait) {
  return (Store<AppState> store) async {
    final searchResults = await new Future.delayed(
      new Duration(seconds: secondsToWait),
      () => null,
    );

    store.dispatch(ToggleLoadingAction());
  };
}
