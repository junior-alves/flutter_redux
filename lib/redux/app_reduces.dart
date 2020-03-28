import 'package:flutterreduxtest/model/app_state.dart';
import 'loading_reduces.dart';

AppState appReducer(AppState prevState, dynamic action) {
  return AppState(loadingState: LoadingReduce(prevState.loadingState, action));
}
