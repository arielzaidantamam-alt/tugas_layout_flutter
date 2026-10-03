# Tugas_Layout_Flutter

Praktikum Flutter – Profil Interaktif Berbasis NIM.

## Data Praktikan

- **Nama:** Ariel Zaidan Tamam
- **NIM:** 20240801009
- **Hobi:** Game & Coding
- **Skor Aktivitas:** dihitung dari 2 digit terakhir NIM + 50

## Perhitungan Atribut Berdasarkan NIM

NIM: `20240801009`

- Digit terakhir = `9`
- Digit ke-2 dari belakang = `0`
- Dua digit terakhir = `09` → `9`

| Komponen | Rumus | Hasil |
|---|---:|---:|
| Lebar kartu | `320.0 + (0 × 5)` | `320.0` |
| Border radius | `12.0 + (9 × 1.5)` | `25.5` |
| Ukuran FlutterLogo | `60.0 + (9 × 2)` | `78.0` |
| Jarak pemisah | `15.0 + 9` | `24.0` |
| Skor aktivitas | `9 + 50` | `59` |
| Background | digit terakhir ganjil | `Colors.tealAccent[100]` |

## Struktur Repository

```text
Tugas_Layout_Flutter/
├── .github/
│   └── workflows/
│       └── build_apk.yml
├── docs/
│   └── perhitungan_nim.md
├── lib/
│   ├── main.dart
│   └── profile_card.dart
├── test/
│   └── profile_card_test.dart
├── .gitignore
├── analysis_options.yaml
├── pubspec.yaml
└── README.md
```

## Menjalankan Project

Pastikan Flutter dan Android Studio sudah terpasang.

```bash
flutter pub get
flutter run
```

Untuk menjalankan pada emulator Android:

```bash
flutter devices
flutter run -d <id-device>
```

## Membuat APK

```bash
flutter clean
flutter pub get
flutter build apk --release
```

File APK release biasanya berada di:

```text
build/app/outputs/flutter-apk/app-release.apk
```

## GitHub Actions

Repository ini sudah disiapkan dengan workflow:

```text
.github/workflows/build_apk.yml
```

Workflow tersebut menjalankan pemeriksaan project dan build APK release pada GitHub Actions. Setelah repository di-upload ke GitHub, buka tab **Actions** untuk menjalankannya.

## Catatan

File `lib/profile_card.dart` menghitung ukuran styling kartu langsung dari nilai NIM yang diberikan melalui constructor `ProfileCard`, sehingga angka styling tidak memakai nilai standar yang di-hardcode.
