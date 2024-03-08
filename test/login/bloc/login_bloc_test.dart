// import 'package:bloc_test/bloc_test.dart';
// import 'package:bluesoft_bank/bloc/login_bloc/login_bloc.dart';
// import 'package:bluesoft_bank/core/di/di.dart';
// import 'package:bluesoft_bank/core/models/client/client.dart';
// import 'package:bluesoft_bank/framework/repository/implementation/login_repository_impl.dart';
// import 'package:bluesoft_bank/framework/repository/interface/i_login_repository.dart';
// import 'package:bluesoft_bank/utils/results/failure_entity/failure_entity.dart';
// import 'package:bluesoft_bank/utils/results/results.dart';
// import 'package:bluesoft_bank/utils/ui_event.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class MockLoginRepository extends Mock implements LoginRepositoryImpl {}

// class MockSharedPreferences extends Mock implements SharedPreferences {}

// class MockLoginBloc extends Mock implements LoginBloc {}

// void main() {
//   late MockLoginRepository mockLoginRepository;
//   late MockSharedPreferences mockSharedPreferences;
//   late MockLoginBloc mockLoginBloc;

//   setUp(() async {
//     WidgetsFlutterBinding.ensureInitialized();

//     mockLoginRepository = MockLoginRepository();
//     mockSharedPreferences = MockSharedPreferences();
//     mockLoginBloc = MockLoginBloc();
//     getIt
//       ..registerSingleton<LoginBloc>(mockLoginBloc)
//       ..registerSingleton<SharedPreferences>(mockSharedPreferences)
//       ..registerSingleton<ILoginRepository>(mockLoginRepository);
//   });

//   group('LoginBloc', () {
//     const client =
//         Client(name: 'John Doe', city: "NY", id: "1234", uid: "12563");
//     blocTest<LoginBloc, LoginState>(
//       'emits loading and success states when login is successful',
//       build: () {
//         try{

//         }catch(e){

//         }
       
//       },
//       act: (bloc) => bloc.add(LoginEvent.login(client.name, 'test')),
//       expect: () => [
//         const LoginState(isLoading: true),
//         LoginState(
//           isLoading: false,
//           navigateToHomePage: UiEvent(client),
//         ),
//       ],
//     );

//     blocTest<LoginBloc, LoginState>(
//       'emits loading and failure states when login fails',
//       build: () => LoginBloc(mockLoginRepository),
//       act: (bloc) => bloc.add(const LoginEvent.login('user', 'password')),
//       setUp: () {
//         when(mockLoginRepository.login('user', 'password'))
//             .thenAnswer((_) async => const Failure(FailureEntity.fail()));
//       },
//       expect: () => [
//         const LoginState(isLoading: true),
//         LoginState(isLoading: false, error: UiEvent.nothing),
//       ],
//     );

//     blocTest<LoginBloc, LoginState>(
//       'saves the client to SharedPreferences on successful login',
//       build: () {
//         when(mockLoginRepository.login('user', 'password'))
//             .thenAnswer((_) async => const Success(client));
//         return LoginBloc(mockLoginRepository);
//       },
//       act: (bloc) => bloc.add(const LoginEvent.login('user', 'password')),
//       verify: (_) {
//         verify(mockSharedPreferences.setString(
//           'current_client',
//           client.toJson().toString(),
//         ));
//       },
//     );
//   });
// }
