import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/app.dart';
import 'package:flutter_frontend/theme/app_theme.dart';

void main() {
  testWidgets('App renders Home screen and Ocean theme applies', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    // App bar title defaults to "Ocean App" via .env fallback
    expect(find.text('Ocean App'), findsOneWidget);

    // Theme primary color applied
    final ThemeData theme = Theme.of(tester.element(find.byType(MaterialApp)));
    expect(theme.colorScheme.primary.value, equals(0xFF2563EB));
  });
}
