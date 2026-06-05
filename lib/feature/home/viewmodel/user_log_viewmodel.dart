import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:user_log/feature/home/model/users.dart';
import 'package:user_log/feature/home/repository/user_log_remote_repository.dart';

part 'user_log_viewmodel.g.dart';

@riverpod
class UserLogViewmodel extends _$UserLogViewmodel {
  late final UserLogRemoteRepository _userLogRemoteRepository;

  @override
  AsyncValue<List<Users>>? build() {
    _userLogRemoteRepository = ref.read(userLogRemoteRepositoryProvider);
    return null;
  }

  Future<void> getUsers() async {
    state = const AsyncValue.loading();
    final result = await _userLogRemoteRepository.getUsers();

    return result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
      },
      (billsSection) {
        state = AsyncValue.data(billsSection);
      },
    );
  }
}
