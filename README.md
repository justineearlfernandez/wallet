# Flutter Money Transfer App

This Flutter project demonstrates a simple money sending and transaction tracking app using Clean Architecture, Bloc/Cubit state management, and unit testing. It includes a local cache and API integration for transactions.

## Features

Send Money: Users can enter an amount and submit it. The transaction is saved locally and can optionally be posted to an API.

Transaction History: Displays a merged list of locally saved transactions and transactions fetched from the API.

Clean Architecture:

Domain layer: Entities, UseCases, Repositories

Data layer: Remote DataSources and Repository implementations

Presentation layer: Cubit for state management and UI widgets

Freezed: For immutable state management with union types.

Unit Tests: Covers UseCases, Repository implementations, and Cubit logic.

## Getting Started
1. Prerequisites

Flutter SDK: >= 3.0.0

Dart SDK: >= 3.0.0

An editor like VS Code or Android Studio

2. Install Dependencies
flutter pub get

3. Run the App
flutter run


Or run in a specific device:

flutter run -d emulator-5554


The app should open the login page. From there, you can navigate to:

Send Money Page – Enter a number and submit

Transaction Page – View transactions (merged from API and local cache)

4. Run Unit Tests

This project includes unit tests for:

Cubit (state management)

UseCases (business logic)

Repository (local + API data handling)

Run all tests:

flutter test


Run a specific test file:

flutter test test/features/send_page/domain/usecases/send_money_usecase_test.dart


Run a single test by name:

flutter test -p vm --plain-name "calls repository.sendMoney"

5. Directory Structure
lib/
├── features/
│   ├── login/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── send_page/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── transaction_page/
├── main.dart
test/
├── features/
│   ├── login/
│   ├── send_page/
│   └── transaction_page/


data: Models, RemoteDataSources, Repositories

domain: Entities, UseCases, Repositories interfaces

presentation: UI pages, Widgets, Cubits

6. Mocking & Unit Testing

mocktail is used for mocking repository and remote datasource interactions.

Freezed is used for immutable states in Cubits, allowing for precise unit tests.

Example Test: SendMoneyUseCase
test('calls repository.sendMoney with correct value', () async {
  final mockRepository = MockSendMoneyRepository();
  final useCase = SendMoneyUseCase(mockRepository);

  registerFallbackValue(SendNumber(0));

  await useCase(500);

  verify(() => mockRepository.sendMoney(any())).called(1);
});

7. API Integration

The project uses a fake API (e.g., https://jsonplaceholder.typicode.com/
) for demonstration.

Transactions fetched from API are merged with locally saved transactions for display.
