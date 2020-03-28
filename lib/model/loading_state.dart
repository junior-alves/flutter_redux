class LoadingState {
  final bool enabled;

  LoadingState({this.enabled});

  factory LoadingState.initial() {
    return LoadingState(enabled: false);
  }

  LoadingState copyWith({
    bool enabled,
  }) {
    return new LoadingState(
      enabled: enabled ?? this.enabled,
    );
  }
}
