import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:your_project/home_page.dart';  // Update with your actual import

void main() {
  group('HomePage Widget Tests', () {
    testWidgets('displays welcome message', (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(GetMaterialApp(home: HomePage()));

      // Act
      await tester.pumpAndSettle();

      // Assert
      expect(find.text('Welcome to HomePage'), findsOneWidget);
    });

    testWidgets('has a button that toggles dark mode', (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(GetMaterialApp(home: HomePage()));

      // Act
      await tester.tap(find.byKey(Key('dark_mode_button')));
      await tester.pumpAndSettle();

      // Assert
      // Add assertions related to dark mode, if you have a way to verify it
      // For example, you could check the theme brightness
      expect(Get.isDarkMode, true);
    });
  });
}
