import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/app.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Bottom navigation switches between tabs', (tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    // Starts at Home
    expect(find.text('Welcome'), findsOneWidget);

    // Tap List
    await tester.tap(find.byIcon(Icons.list_alt_outlined));
    await tester.pumpAndSettle();
    expect(find.text('Sample List'), findsOneWidget);

    // Tap Settings
    await tester.tap(find.byIcon(Icons.settings_outlined));
    await tester.pumpAndSettle();
    expect(find.text('Settings'), findsOneWidget);

    // Go back to Home
    await tester.tap(find.byIcon(Icons.home_outlined));
    await tester.pumpAndSettle();
    expect(find.text('Welcome'), findsOneWidget);
  });
}
