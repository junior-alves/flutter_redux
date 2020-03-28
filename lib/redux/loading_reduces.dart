import 'package:flutterreduxtest/model/loading_state.dart';
import 'package:flutterreduxtest/redux/loading_actions.dart';
import 'package:redux/redux.dart';

final LoadingReduce = combineReducers<LoadingState>([
  TypedReducer<LoadingState, ToggleLoadingAction>(_toggleLoading),
]);

LoadingState _toggleLoading(LoadingState state, ToggleLoadingAction action) {
  return state.copyWith(enabled: !state.enabled);
}
