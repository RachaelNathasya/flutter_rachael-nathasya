class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  void tambahCourse(Course course) {
    daftarCourse.add(course);
    print("Course '${course.judul}' ditambahkan ke daftar.");
  }

  void hapusCourse(Course course) {
    daftarCourse.remove(course);
    print("Course '${course.judul}' dihapus dari daftar.");
  }

  void lihatDaftarCourse() {
    if (daftarCourse.isNotEmpty) {
      print("Daftar Course:");
      for (var course in daftarCourse) {
        print("- ${course.judul}: ${course.deskripsi}");
      }
    } else {
      print("Belum ada course dalam daftar.");
    }
  }
}

void main() {
  Course course1 = Course("Matematika", "Pelajaran tentang matematika dasar.");
  Course course2 =
      Course("Bahasa Inggris", "Pelajaran tentang bahasa Inggris.");

  Student student = Student("John Doe", "Kelas 10A");
  student.tambahCourse(course1);
  student.tambahCourse(course2);

  student.lihatDaftarCourse();

  student.hapusCourse(course1);
  student.lihatDaftarCourse();
}
