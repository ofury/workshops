import 'package:counter_provider/counter_viewmodel.dart';
import 'package:counter_provider/service_locator.dart';
import 'package:counter_provider/storage_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockStorageService extends Mock implements StorageService {}

void main() {
  setUpAll(() {
    setupServiceLocator();
    locator.allowReassignment = true;
  });

  test(
    'should increment counter',
    () async {
      // reassign storage service with a mock
      var mockStorageService = MockStorageService();
      when(mockStorageService.getCounterValue()).thenAnswer(
        (_) => Future.value(0),
      );
      locator.registerSingleton<StorageService>(mockStorageService);

      // increment counter
      final viewModel = CounterViewModel();
      viewModel.increment();

      expect(viewModel.counter, 1);
    },
  );
}