
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_app/features/login/domain/entities/user.dart';
import 'package:my_app/features/login/domain/usecases/login_user_usecase.dart';
import 'package:my_app/features/login/presentation/cubit/login_cubit.dart';
import 'package:my_app/features/login/presentation/cubit/login_state.dart';

class MockLoginUser extends Mock implements LoginUserUsecase {}
class FakeUser extends Fake implements User {}

void main() {
  late LoginCubit cubit;
  late MockLoginUser mockLoginUser;

  setUpAll(() {
    registerFallbackValue(FakeUser());
  });

  setUp(() {
    mockLoginUser = MockLoginUser();
    cubit = LoginCubit(loginUser: mockLoginUser);
  });

  test('initial state is correct', () {
    expect(cubit.state.email, '');
    expect(cubit.state.password, '');
    expect(cubit.state.obscurePassword, true);
    expect(cubit.state.isLoading, false);
    expect(cubit.state.isSuccess, false);
  });

  blocTest<LoginCubit, LoginState>(
    'emits updated email when emailChanged is called',
    build: () => cubit,
    act: (cubit) => cubit.emailChanged('test@example.com'),
    expect: () => [
      cubit.state.copyWith(email: 'test@example.com', emailError: null),
    ],
  );

  blocTest<LoginCubit, LoginState>(
    'emits updated password when passwordChanged is called',
    build: () => cubit,
    act: (cubit) => cubit.passwordChanged('Password123'),
    expect: () => [
      cubit.state.copyWith(password: 'Password123', passwordError: null),
    ],
  );

  blocTest<LoginCubit, LoginState>(
  'toggles password visibility',
  build: () => cubit,
  act: (cubit) => cubit.togglePasswordVisibility(),
  expect: () => [
    const LoginState(
      email: '',
      password: '',
      obscurePassword: false,
      emailError: null,
      passwordError: null,
      isLoading: false,
      isSuccess: false,
    ),
  ],
);


blocTest<LoginCubit, LoginState>(
  'emits loading then success when login succeeds',
  build: () {
    when(() => mockLoginUser.call(any())).thenAnswer((_) async => true);
    return cubit;
  },
  act: (cubit) async {
    cubit.emailChanged('test@example.com');
    cubit.passwordChanged('Password123');
    await cubit.login();
  },
  expect: () => [
    const LoginState(
      email: 'test@example.com',
      password: '',
      obscurePassword: true,
      emailError: null,
      passwordError: null,
      isLoading: false,
      isSuccess: false,
    ),
    const LoginState(
      email: 'test@example.com',
      password: 'Password123',
      obscurePassword: true,
      emailError: null,
      passwordError: null,
      isLoading: false,
      isSuccess: false,
    ),
    const LoginState(
      email: 'test@example.com',
      password: 'Password123',
      obscurePassword: true,
      emailError: null,
      passwordError: null,
      isLoading: true,
      isSuccess: false,
    ),
    const LoginState(
      email: 'test@example.com',
      password: 'Password123',
      obscurePassword: true,
      emailError: null,
      passwordError: null,
      isLoading: false,
      isSuccess: true,
    ),
  ],
);


blocTest<LoginCubit, LoginState>(
  'emits loading then error when login fails',
  build: () {
    when(() => mockLoginUser.call(any())).thenAnswer((_) async => false);
    return cubit;
  },
  act: (cubit) async {
    cubit.emailChanged('wrong@example.com');
    cubit.passwordChanged('wrongpass');
    await cubit.login();
  },
  expect: () => [
   // After emailChanged
    const LoginState(
      email: 'wrong@example.com',
      password: '',
      obscurePassword: true,
      emailError: null,
      passwordError: null,
      isLoading: false,
      isSuccess: false,
    ),
   // After passwordChanged
    const LoginState(
      email: 'wrong@example.com',
      password: 'wrongpass',
      obscurePassword: true,
      emailError: null,
      passwordError: null,
      isLoading: false,
      isSuccess: false,
    ),
   // During loading
    const LoginState(
      email: 'wrong@example.com',
      password: 'wrongpass',
      obscurePassword: true,
      emailError: null,
      passwordError: null,
      isLoading: true,
      isSuccess: false,
    ),
 //   After failed login
    const LoginState(
      email: 'wrong@example.com',
      password: 'wrongpass',
      obscurePassword: true,
      emailError: 'Invalid email',
      passwordError: 'Incorrect password',
      isLoading: false,
      isSuccess: false,
    ),
  ],
);

}



