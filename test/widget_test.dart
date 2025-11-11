// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_flutter_app/main.dart';

void main() {
  testWidgets('Menu Toast App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the app bar is displayed with the title.
    expect(find.text('Menu Toast App'), findsOneWidget);

    // Verify that the main body text is displayed.
    expect(find.text('Tap the menu in the app bar'), findsOneWidget);

    // Verify that the PopupMenuButton icon exists.
    expect(find.byIcon(Icons.more_vert), findsOneWidget);
  });
}
