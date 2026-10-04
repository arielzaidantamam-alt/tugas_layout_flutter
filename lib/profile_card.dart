import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    Key? key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int digitKe2DariBelakang =
        int.parse(nim[nim.length - 2]);
    final int digitTerakhir =
        int.parse(nim[nim.length - 1]);

    final double lebarKartu =
        320.0 + (digitKe2DariBelakang - 2);
    final double borderRadius =
        12.0 + (digitTerakhir * 1.5);
    final double ukuranLogo =
        60.0 + (digitTerakhir * 2);
    final double jarakPemisah =
        15.0 + digitTerakhir;
    final int skorAktivitas =
        (digitTerakhir * 2) + 50;

    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.155),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
        ],
      ),
    );
  }
}
