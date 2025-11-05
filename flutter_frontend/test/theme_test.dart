import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/theme/app_theme.dart';

void main() {
  test('Light theme has correct primary and error colors', () {
    final theme = buildLightTheme();
    expect(theme.colorScheme.primary.value, 0xFF2563EB);
    expect(theme.colorScheme.error.value, 0xFFEF4444);
  });

  test('Dark theme has correct primary color', () {
    final theme = buildDarkTheme();
    expect(theme.colorScheme.primary.value, 0xFF2563EB);
  });
}
