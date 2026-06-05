import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:user_log/core/constants/server_constants.dart';
import 'package:user_log/core/error/failure.dart';
import 'package:user_log/core/network/connection_check.dart';
import 'package:user_log/feature/home/model/users.dart';
import 'package:user_log/init_dependencies.dart';

part 'user_log_remote_repository.g.dart';

@riverpod
UserLogRemoteRepository userLogRemoteRepository(Ref ref) {
  final client = serviceLocator<http.Client>();
  final connectionChecker = serviceLocator<ConnectionChecker>();
  return UserLogRemoteRepository(
    client: client,
    connectionChecker: connectionChecker,
  );
}

class UserLogRemoteRepository {
  final http.Client client;
  final ConnectionChecker connectionChecker;

  UserLogRemoteRepository({
    required this.client,
    required this.connectionChecker,
  });

  Future<Either<Failure, List<Users>>> getUsers() async { 
    try {
      final isConnected = await connectionChecker.isConnected;
      if (!isConnected) {
        return const Left(Failure('No internet connection.'));
      }
      final uri = Uri.parse("${ServerConstants.baseApiUrl}users");
      final response = await client.get( 
        uri,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode != 200) {
        return Left(Failure(response.body, response.statusCode));
      }

      final mockData = usersFromJson(jsonDecode(response.body));
      return Right(mockData);
    } on SocketException {
      return const Left(Failure('No internet connection.'));
    } catch (e) {
      return Left(Failure('Failed to fetch data: ${e.toString()}'));
    }
  }
}
