void main(List<String> args) { 
  const student1 = Student("Ayşe", 22); // const anahtar kelimesi ile değiştirilemez bir nesne oluşturuyoruz
  const student2 = Student("Ayşe", 22); // const anahtar kelimesi ile başka bir değiştirilemez nesne oluşturuyoruz

  if (student1 == student2) {
    print("Öğrenciler eşit");
  } else {
    print("Öğrenciler farklı");
  }

  final student3 = const Student("Ali", 20); //  final anahtar kelimesi ile değiştirilemez bir nesne oluşturuyoruz
  // final anahtar kelimesi ile oluşturulan nesne, const ile oluşturulan nesne ile aynı referansa sahip
  // çünkü her ikisi de aynı değerleri taşıyor.
  if (student1 == student3) {
    print("Öğrenciler eşit");
  } else {
    print("Öğrenciler farklı");
  }

  var student4 = const Student("Ayşe", 22); // var anahtar kelimesi ile değiştirilebilen bir nesne oluşturuyoruz
  // var anahtar kelimesi ile oluşturulan nesne, const ile oluşturulan nesne ile aynı referansa sahip
  if (student1 == student4) {
    print("Öğrenciler eşit");
  } else {
    print("Öğrenciler farklı");
  }

  // Öğrenciler farklı çünkü her biri ayrı bir nesne
  StaticExample.staticVariable = 5; // Statik değişkeni değiştiriyoruz
  StaticExample.staticMethod(); // Statik metodu çağırıyoruz
}

class Student {
  final String name;
  final int age;

  const Student(this.name, this.age);
}

class StaticExample {
  static int staticVariable = 0; // Statik değişken, sınıf düzeyinde tanımlanır ve tüm örnekler tarafından paylaşılır

  // Statik metot, sınıf düzeyinde tanımlanır ve örnek oluşturmadan çağrılabilir
  static void staticMethod() {
    print("Statik metot çağrıldı. Statik değişkenin değeri: $staticVariable");
  }
}


