import 'package:test/test.dart';
import 'package:testing/screen/calculator.dart';

void main() {
  late Calculator calculator;
  setUp(
    () => calculator = Calculator(),
    //this is called before each test start running
  );

  setUpAll(() {
    //this func will be executed when we want some functionality to invoke before any test run.

    //this will be called before running tests.
  });

  tearDown(() {
    //this will be called after each test completed.
  });

  tearDownAll(() {
    //this will be called after all test execution completed.
  });

  group('add', () {
    test('the calculator return 5 when 2 and 3 is added', () {
     // Steps
      // 1. create instance
      //final calculator = Calculator();

      //2. take result
      //final result = calculator.add(2, 3);

      //3. match
      expect(calculator.add(2, 3), 5, reason: 'This will be 5');
    });

    test('the calculator gives 10000 when 999 and 1 is added', () {
      //create instance
      // final calculator = Calculator();

      //take result
      // final result = calculator.add(999, 1);

      //match
      expect(calculator.add(999, 1), 1000, reason: 'This will give 10000');
    });
  });

  group('Substract', () {
    test('the calculator return 1 when 3 and 2 is substracted', () {
      //create instance
      //final calculator = Calculator();

      //take result
      //final result = calculator.substract(3, 2);

      //match
      expect(calculator.substract(3, 2), 1, reason: 'This will be 1');
    });

    test('the calculator gives 998 when 999 and 1 is substracted', () {
      //create instance
      // final calculator = Calculator();

      //take result
      // final result = calculator.substract(999, 1);

      //match
      expect(calculator.substract(999, 1), 998, reason: 'This will give 998');
    });
  });

  group('Division', () {
    test('This will give ', () {
      expect(() => calculator.division(4, 0), throwsArgumentError,
          reason: 'Division by 0');
    });
    test('Future values', () async {
      expect(await calculator.powerOfTwo(4), 16,
          reason: 'Power of 2 ki 4 is 16');
    });
  });
}
