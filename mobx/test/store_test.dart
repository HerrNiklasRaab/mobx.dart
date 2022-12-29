import 'package:mobx/mobx.dart';
import 'package:test/test.dart';

class TestStore with Store {}

final customContext = ReactiveContext();

class CustomStore with Store {
  @override
  ReactiveContext get c => customContext;
}

void main() {
  group('Store', () {
    test('can get context', () {
      final store = TestStore();
      expect(store.c, mainContext);
    });

    test('Store with custom context', () {
      final store = CustomStore();
      expect(store.c, customContext);
    });
  });
}
