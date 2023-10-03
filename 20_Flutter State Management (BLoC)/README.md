State Management 

Declarative UI
- Flutter memilki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini

UI = f(state)

UI = the layout on the screen
f = Your build methods
state = the application state

State 
- State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
- Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
- Ada 2 jenis state dalam flutter, ephemeral state dan app state

Ephemeral State
- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, 
contohnya: PageView, BottomNavigationBar, Switch Button
- Tidak perlu state management yang kompleks
- Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

App State
- Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, 
contohnya: Login info, Pengaturan preferensi pengguna, keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda

Pendekatan Sate management
- setState , lebih cocok penggunaan nya pada ephemeral state
- Provider, penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari
- Bloc , Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logicnya

Provider
- Class yang perlu diperhatikan dalam penggunaan provider :
a. Dari package Provider 
    - ChangeNotifierProvider
    - MultiProvider
    - Consumer
b. Build In class dari Flutter SDK
    - ChangeNotifier

ChangeNotifier
- Class yang menambah dan menghapus listeners
- Digunakan dengan cara meng-extends
- Memanggil notifyListeners(), fungsi yang memberitahu widget yang menggunakan  state bahwa terjadi perubahan data sehingga UI nya harus dibangun ulang 

ChangeNotifierProvider
- Widget yang membungkus sebuah class
- Mengimplementasikan ChangeNotifier dan menggunakan child untuk widget UI nya
- Menggunakan create, provider yang akan menyimpan model yang telah dibuat

MultiProvider
- Jika kita membutuhkan lebih dari satu provider

Consumer
- Widget yang mendengarkan perubahan kelas yang mengimplementasikan ChangeNotifier
- Membangun ulang widget yang dibungkus Consumer saja
- Penting untuk meletakan Consumer pada lingkup sekecil mungkin
- Membutuhkan properti builder yang berisi context, model, dan child

BLoC (Business Logic Component)
- Memisahkan antara bussiness logic dengan UI

Kenapa BLoC?
Karena Simple, Powerful, dan Testable

Cara kerja BLoC
- Menerima event sebagai input
- Dianalisa dan dikelola di dalam BLoC
- Menghasil state sebagai output

Event           State
=(input)> BLoC =output>

Stream
- Rangkaian proses secara asynchronous
- Actor utama di dalam BLoC
