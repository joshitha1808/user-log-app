import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_log/core/utils/loader.dart';
import 'package:user_log/core/utils/show_snackbar.dart';
import 'package:user_log/feature/home/viewmodel/user_log_viewmodel.dart';
import 'package:user_log/feature/home/view/widget/user_tile.dart';

class UserPage extends ConsumerStatefulWidget {
  const UserPage({super.key});

  @override
  ConsumerState<UserPage> createState() => _UserPageState();
}

class _UserPageState extends ConsumerState<UserPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(userLogViewmodelProvider.notifier).getUsers();
    });
  }

  @override
  Widget build(BuildContext context) {
    final usersAsync = ref.watch(userLogViewmodelProvider);
    final isLoading = ref.watch(
      userLogViewmodelProvider.select((value) => value?.isLoading == true),
    );

    ref.listen(userLogViewmodelProvider, (_, next) {
      if (next == null) return;
      next.whenOrNull(
        error: (err, _) {
          showSnackBar(context, err.toString(), SnackBarType.error);
        },
      );
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Users Information')),
      body: usersAsync == null
          ? Center(child: isLoading ? Loader() : const Text('No data'))
          : usersAsync.when(
              data: (users) {
                if (users.isEmpty) {
                  return const Center(child: Text('No users found'));
                }
                return ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return UserTile(users: user);
                  },
                );
              },
              loading: () => const Center(child: Loader()),
              error: (err, _) => Center(child: Text(err.toString())),
            ),
    );
  }
}