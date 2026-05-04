# MyPorto - Aplikasi Portfolio

## Deskripsi
MyPorto adalah aplikasi portfolio sederhana yang dibuat menggunakan Flutter. Aplikasi ini menampilkan semua hasil praktek dari pembelajaran Praktikum Pemrograman Aplikasi Bergerak.

## Struktur Aplikasi

### 2 Halaman Utama:
1. **Dashboard (MyPorto)** - Halaman awal yang menampilkan daftar project
2. **Tentang Saya** - Halaman profil dengan informasi pribadi

### 6 Project Pages:
1. **Counter** - Contoh implementasi state management dengan increment/decrement counter
2. **Widget Bertingkat** - Mendemonstrasikan nested widgets dan layout combinations
3. **User Input Example** - Form dengan input fields, dropdown, dan checkbox
4. **Dynamic List Example** - List dinamis yang dapat ditambah dan dihapus
5. **Navigasi Sederhana** - Bottom navigation dengan multiple pages
6. **Grid View** - Grid layout dengan item yang interaktif

## Fitur Utama

### Dashboard
- AppBar dengan judul "MyPorto"
- Teks deskriptif "Cek hasil karyaku disini:"
- 7 tombol rounded dengan warna abu-abu muda (light gray)
- Tombol berubah warna menjadi biru ketika diklik
- Navigasi antar halaman yang smooth

### Tentang Saya
- AppBar dengan judul "Tentang Saya"
- Gambar profil (avatar placeholder)
- Informasi NPM, Nama, dan Deskripsi singkat
- Design yang clean dan user-friendly

## Teknologi yang Digunakan
- **Framework**: Flutter
- **Bahasa**: Dart
- **Minimum SDK**: API 21 (Android) / iOS 11.0 (iOS)

## Cara Menjalankan

### Prerequisites
- Flutter SDK (version: 3.x atau lebih baru)
- Dart SDK (included dengan Flutter)

### Steps
1. Clone repository ini atau extract zip file
2. Buka terminal di folder project
3. Jalankan `flutter pub get` untuk install dependencies
4. Jalankan `flutter run` untuk menjalankan aplikasi

### Platform yang Didukung
- Android
- iOS
- Windows
- Linux
- Web (dengan konfigurasi tambahan)

## Struktur Folder

```
lib/
├── main.dart              # Entry point aplikasi
├── screens/
│   ├── dashboard.dart     # Dashboard page
│   ├── about_me.dart      # About me page
│   ├── counter_screen.dart
│   ├── nested_widget_screen.dart
│   ├── user_input_screen.dart
│   ├── dynamic_list_screen.dart
│   ├── simple_navigation_screen.dart
│   └── grid_view_screen.dart

test/
└── widget_test.dart       # Unit tests

screenshots/              # Folder berisi screenshot setiap halaman
├── 01_dashboard.png
├── 02_about_me.png
├── 03_counter.png
├── 04_nested_widget.png
├── 05_user_input.png
├── 06_dynamic_list.png
├── 07_simple_navigation.png
└── 08_grid_view.png
```

## Fitur Interaktif

### Dashboard
- Klik tombol untuk membuka halaman project
- Tombol berubah warna ketika aktif
- Kembali ke dashboard dengan tombol back

### Counter
- Tombol + untuk increment
- Tombol - untuk decrement
- Display angka counter

### Widget Bertingkat
- Menampilkan contoh nested containers
- Kombinasi Row dan Column layouts

### User Input Form
- Text fields untuk Nama dan Email
- Dropdown untuk memilih Gender
- Checkbox untuk agree terms
- Tombol Submit dan Reset
- Display data yang diinput

### Dynamic List
- TextField untuk menambah item baru
- ListTile untuk setiap item
- Tombol delete untuk menghapus item
- Counter total items

### Navigasi Sederhana
- Bottom navigation bar dengan 3 halaman
- Halaman Beranda, Profil, dan Pengaturan
- Smooth transition antar halaman

### Grid View
- Grid layout 3 kolom
- 12 item dengan icon dan warna berbeda
- Tap items untuk menampilkan snackbar

## Desain dan UI
- Menggunakan Material Design 3
- Warna primary: Blue (#2196F3)
- Rounded corners untuk better aesthetics
- Responsive layout yang cocok untuk berbagai ukuran device

## Info Pengembang
Aplikasi ini dikembangkan sebagai tugas UTS (Ujian Tengah Semester) untuk mata kuliah Praktikum Pemrograman Aplikasi Bergerak pada Program Studi Sistem Informasi.

**Dosen Pengampu**: Novianti Indah Putri, S.T., M. Kom

**Jadwal UTS**: Selasa, 5 Mei 2026
**Deadline Pengumpulan**: Jumat, 8 Mei 2026 pukul 23.59

## License
Bebas digunakan untuk keperluan akademik dan personal project.

---

**Notes:**
- Aplikasi ini berfokus pada pembelajaran fundamentals Flutter
- Setiap halaman mendemonstrasikan konsep Flutter yang berbeda
- Code dapat diextend dan dimodifikasi untuk kebutuhan lebih lanjut
