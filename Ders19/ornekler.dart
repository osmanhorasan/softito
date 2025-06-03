import 'dart:math';

void main(List<String> args) {
  // Person ve Student sınıflarını tanımlıyoruz
  Person person = Person('Alice', 30);
  print(person);

  // Student sınıfından nesneler oluşturuyoruz
  Student student = Student('Bob', 20, 'XYZ University');
  print(student);

  // Person sınıfından Student nesnesi oluşturma
  Student student2 = Student('Charlie', 22, 'ABC College');
  print(student2);

  // Farklı bir Person nesnesi
  Person person2 = Student('Dave', 25, 'LMN Academy');
  print(person2);

  // Listelerle çalışıyoruz
  // Person ve Student nesnelerini içeren bir liste oluşturuyoruz
  List<Person> people = [person, student, student2, person2];

  // Listeye yeni bir Person ekliyoruz
  for (var p in people) {
    print(p);
  }

  people.elementAt(1);
  // İkinci kişiyi al

  people.elementAt(Random().nextInt(people.length));
  // Rastgele bir kişiyi al
  

  people.every((Person p) => p.age > 18); 
  // Tüm kişilerin yaşı 18'den büyük mü?

  people.any((Person p) => p.age < 18); 
  // En az bir kişinin yaşı 18'den küçük mü?

  people.firstWhere((Person p) => p.name.startsWith('A'), orElse: () => Person('Default', 0));
  // İlk 'A' ile başlayan isme sahip kişiyi bul, yoksa varsayılan bir kişi döndür

  people.where((Person p) => p.age > 20).forEach((Person p) => print(p));
  // 20'den büyük yaşa sahip kişileri filtrele ve yazdır

  people.map((Person p) => p.name).forEach((name) => print(name));
  // Tüm kişilerin isimlerini al ve yazdır

  var filteredPeople = people.map((Person p) => p.name).toList();
  // Tüm kişilerin isimlerini al ve listeye dönüştür
  print(filteredPeople);

  var names = people.map((Person p) => p.name).toSet();
  // Tüm kişilerin isimlerini al ve küme olarak sakla (tekrarları önler)
  print(names);

 

  people.toList() ;
  // Listeye dönüştür

  List<String> namesList = people.map((Person p) => p.name).toList();
  // Tüm kişilerin isimlerini al ve listeye dönüştür
  namesList.sort();
  print(namesList);
;



  
}

// Person ve Student sınıflarını tanımlıyoruz
class Person {

  // Person sınıfı, temel bir kişi modelini temsil eder
  // İsim ve yaş özelliklerine sahiptir
  String name;  // Kişinin ismi
  int age; // Kişinin yaşı

  // Person sınıfının yapıcı metodu
  Person(this.name, this.age);

  // toString metodu, Person nesnesinin string temsili için kullanılır
  // Bu metot, nesnenin ismini ve yaşını döndürür
  @override
  String toString() {
    return 'Person{name: $name, age: $age}';
  }
}

// Student sınıfı, Person sınıfından türetilir
class Student extends Person {

  // Student sınıfı, Person sınıfına ek olarak okul özelliğine sahiptir
  String school; // Öğrencinin okulu

  // Student sınıfının yapıcı metodu, Person'ın yapıcısını çağırır
  Student(String name, int age, this.school) : super(name, age);

  // toString metodu, Student nesnesinin string temsili için kullanılır
  // Bu metot, nesnenin ismini, yaşını ve okulunu döndürür
  @override
  String toString() {
    return 'Student{name: $name, age: $age, school: $school}';
  }
}