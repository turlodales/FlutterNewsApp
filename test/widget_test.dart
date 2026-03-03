import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:news_app_api/main.dart';

void main() {
  testWidgets('App renders with FlutterNews title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify the app bar title is present
    expect(find.text('Flutter'), findsWidgets);
    expect(find.text('News'), findsWidgets);

    // Verify a loading indicator is shown while news loads
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('MyApp uses MaterialApp', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
