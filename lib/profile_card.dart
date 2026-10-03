import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    // Semua nilai styling diturunkan dari digit NIM.
    final int digitTerakhir = int.parse(nim[nim.length - 1]);
    final int digitKe2DariBelakang = int.parse(nim[nim.length - 2]);

    // Rumus tugas:
    // Lebar kartu = 320.0 + (digit ke-2 dari belakang × 5)
    // Border radius = 12.0 + (digit terakhir × 1.5)
    // Ukuran logo = 60.0 + (digit terakhir × 2)
    // Jarak pemisah = 15.0 + digit terakhir
    final double lebarKartu =
        320.0 + (digitKe2DariBelakang * 5);
    final double borderRadius =
        12.0 + (digitTerakhir * 1.5);
    final double ukuranLogo =
        60.0 + (digitTerakhir * 2);
    final double jarakPemisah =
        15.0 + digitTerakhir;

    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header kartu: Row
          Row(
            children: [
              // Sisi kiri: FlutterLogo di dalam Container bundar
              Container(
                width: ukuranLogo,
                height: ukuranLogo,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(ukuranLogo / 2),
                ),
                child: FlutterLogo(
                  size: ukuranLogo * 0.72,
                ),
              ),

              // Jarak pemisah horizontal dari rumus NIM
              SizedBox(width: jarakPemisah),

              // Sisi kanan: Column dengan alignment Start
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kartu Praktikan',
                      style: TextStyle(
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Text(
                      nama,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16.0),

          // Pemisah kartu
          const Divider(
            thickness: 1.5,
          ),

          const SizedBox(height: 12.0),

          // Detail identitas
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailRow(
                icon: Icons.badge_outlined,
                label: 'NIM',
                value: nim,
              ),
              const SizedBox(height: 14.0),
              _buildDetailRow(
                icon: Icons.favorite_outline,
                label: 'Hobi',
                value: hobi,
              ),
              const SizedBox(height: 14.0),
              _buildDetailRow(
                icon: Icons.star_outline,
                label: 'Skor Aktivitas',
                value: skorAktivitas.toString(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 25.0,
          color: Colors.teal,
        ),
        const SizedBox(width: 12.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey,
                ),
              ),
              const SizedBox(height: 2.0),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
