import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:img_sound_and_text/main.dart';

void main() {
  testWidgets('Test image to text and sound', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Ensure that the app title is displayed.
    expect(find.text('Image to Text and Sound'), findsOneWidget);

    // Ensure that initial text is empty.
    expect(find.text(''), findsOneWidget);

    // Tap on the first image.
    await tester.tap(find.byType(Image).first);
    await tester.pump();

    // Ensure that the text is changed after tapping the image.
    expect(find.text('Text 1'), findsOneWidget);
  });
}
