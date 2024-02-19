import 'package:flutter_test/flutter_test.dart';
import 'package:our_tutor/app/utils/extension/datetime.dart';

void main() {
  group('Date Time Extension', () {
    test('Test timeDistance', () {
      // Arrange
      final dateTime = DateTime(2023, 6, 12);
      const expectedString = '2023-06-12';

      // Act
      final result = dateTime.toStringDate;

      // Assert
      expect(result, equals(expectedString));
    });

    test('Test isSameDate', () {
      // Arrange
      final dateTime = DateTime(2023, 6, 12);
      final dateTime2 = DateTime(2023, 6, 13);

      // Act
      final result = dateTime.isSameDate(dateTime2);

      // Assert
      expect(result, false);
    });

    test('Test getBeginDate', () {
      // Arrange
      final dateTime = DateTime(2023, 6, 12, 12, 12, 12);
      final expected = DateTime(2023, 6, 12);

      // Act
      final result = dateTime.getBeginDate;

      // Assert
      expect(result, equals(expected));
    });

    test('Test getEndDate', () {
      // Arrange
      final dateTime = DateTime(2023, 6, 12, 12, 12, 12);
      final expected = DateTime(2023, 6, 12, 23, 59);

      // Act
      final result = dateTime.getEndDate;

      // Assert
      expect(result, equals(expected));
    });
  });
}
