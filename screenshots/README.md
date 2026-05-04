# Screenshots - MyPorto Application

Folder ini berisi screenshot dari setiap halaman aplikasi MyPorto.

## Daftar Screenshot:

### 1. Dashboard (01_dashboard.png)
Halaman utama yang menampilkan:
- AppBar dengan judul "MyPorto"
- Teks "Cek hasil karyaku disini:"
- 7 tombol: Counter, Widget Bertingkat, User Input Example, Dynamic List Example, Navigasi Sederhana, Grid View, dan Tentang Saya
- Tombol berwarna abu-abu muda (light gray) yang berubah menjadi biru ketika diklik

### 2. Tentang Saya (02_about_me.png)
Halaman profil dengan:
- AppBar berjudul "Tentang Saya"
- Icon profil placeholder (circle avatar)
- Informasi NPM
- Nama Mahasiswa
- Deskripsi singkat

### 3. Counter (03_counter.png)
Halaman counter dengan:
- Display angka counter di tengah layar
- 2 FloatingActionButton (+ dan -)
- Perubahan nilai counter saat tombol diklik

### 4. Widget Bertingkat (04_nested_widget.png)
Halaman yang mendemonstrasikan:
- Nested containers dengan 3 level kedalaman
- Warna gradient dari light ke dark blue
- Kombinasi Row dan Column layouts
- Multiple widgets tersusun bertingkat

### 5. User Input Example (05_user_input.png)
Halaman form dengan:
- TextField untuk Nama
- TextField untuk Email
- Dropdown untuk Gender selection
- CheckBox untuk agreement
- Tombol Submit dan Reset
- Area untuk menampilkan hasil input

### 6. Dynamic List Example (06_dynamic_list.png)
Halaman list dinamis dengan:
- TextField dan tombol untuk menambah item
- ListView dengan item-item yang ditampilkan
- Setiap item memiliki nomor, teks, dan tombol delete
- Counter total items di bawah

### 7. Navigasi Sederhana (07_simple_navigation.png)
Halaman dengan bottom navigation bar:
- 3 halaman: Beranda, Profil, dan Pengaturan
- BottomNavigationBar untuk navigasi
- Icon dan label untuk setiap page

### 8. Grid View (08_grid_view.png)
Halaman grid layout dengan:
- Grid 3 kolom x 4 baris (12 items)
- Setiap item memiliki icon dan judul
- Gradient background color yang berbeda untuk setiap item
- Items dapat diklik untuk menampilkan snackbar

## Cara Membuat Screenshot:

### Android/iOS:
1. Jalankan emulator atau sambungkan device fisik
2. Run aplikasi: `flutter run`
3. Gunakan `flutter screenshot` atau screenshot built-in device
4. Save setiap screenshot dengan nama file sesuai urutan di atas

### Desktop (Windows/Linux/macOS):
1. Jalankan aplikasi: `flutter run -d windows` (atau linux/macos)
2. Gunakan screenshot tool built-in OS (Print Screen, Screenshot, dll)
3. Save file ke folder ini

## Naming Convention:
Semua file screenshot menggunakan format:
- `0X_nama_halaman.png` (misalnya: 01_dashboard.png, 02_about_me.png, dll)
- Gunakan nama yang deskriptif dan sesuai dengan halaman yang ditampilkan

## Tips untuk Screenshot Terbaik:
- Pastikan device dalam full screen mode
- Gunakan resolusi standar (1080x1920 untuk mobile)
- Capture seluruh layar termasuk AppBar
- Pastikan warna dan layout jelas terlihat
- Jika ada animasi, capture saat animasi dalam state yang bagus

---

**Note**: File PNG yang sebenarnya akan ditambahkan setelah aplikasi dijalankan dan screenshot diambil dari masing-masing halaman.
