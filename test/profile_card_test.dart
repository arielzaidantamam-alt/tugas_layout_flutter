import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tugas_layout_flutter/profile_card.dart';

void main() {
  testWidgets('ProfileCard menampilkan data praktikan', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: ProfileCard(
              nama: 'Ariel Zaidan Tamam',
              nim: '20240801009',
              hobi: 'Game & Coding',
              skorAktivitas: 99,
            ),
          ),
        ),
      ),
    );

    expect(find.text('Kartu Praktikan'), findsOneWidget);
    expect(find.text('Ariel Zaidan Tamam'), findsOneWidget);
    expect(find.text('20240801009'), findsOneWidget);
    expect(find.text('Game & Coding'), findsOneWidget);
    expect(find.text('99'), findsOneWidget);
    expect(find.byType(FlutterLogo), findsOneWidget);
  });
}
