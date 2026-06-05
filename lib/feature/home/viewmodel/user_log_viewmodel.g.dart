// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_log_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UserLogViewmodel)
final userLogViewmodelProvider = UserLogViewmodelProvider._();

final class UserLogViewmodelProvider
    extends $NotifierProvider<UserLogViewmodel, AsyncValue<List<Users>>?> {
  UserLogViewmodelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userLogViewmodelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userLogViewmodelHash();

  @$internal
  @override
  UserLogViewmodel create() => UserLogViewmodel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<Users>>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<Users>>?>(value),
    );
  }
}

String _$userLogViewmodelHash() => r'8e14fbca3c956cb575d394cf915f88ad8338c928';

abstract class _$UserLogViewmodel extends $Notifier<AsyncValue<List<Users>>?> {
  AsyncValue<List<Users>>? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Users>>?, AsyncValue<List<Users>>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Users>>?, AsyncValue<List<Users>>?>,
              AsyncValue<List<Users>>?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
