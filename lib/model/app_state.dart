import 'package:meta/meta.dart';

import 'loading_state.dart';

class AppState {
  final LoadingState loadingState;

  AppState({@required this.loadingState});

  factory AppState.initial() {
    return AppState(loadingState: LoadingState.initial());
  }

  AppState copyWith({
    LoadingState loadingState,
  }) {
    return AppState(
      loadingState: loadingState ?? this.loadingState,
    );
  }
}
