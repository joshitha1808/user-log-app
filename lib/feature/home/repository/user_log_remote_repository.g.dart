// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_log_remote_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userLogRemoteRepository)
final userLogRemoteRepositoryProvider = UserLogRemoteRepositoryProvider._();

final class UserLogRemoteRepositoryProvider
    extends
        $FunctionalProvider<
          UserLogRemoteRepository,
          UserLogRemoteRepository,
          UserLogRemoteRepository
        >
    with $Provider<UserLogRemoteRepository> {
  UserLogRemoteRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userLogRemoteRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userLogRemoteRepositoryHash();

  @$internal
  @override
  $ProviderElement<UserLogRemoteRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserLogRemoteRepository create(Ref ref) {
    return userLogRemoteRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserLogRemoteRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserLogRemoteRepository>(value),
    );
  }
}

String _$userLogRemoteRepositoryHash() =>
    r'50a6b20ef65180cd5697d1da76571ac645e21ee5';
