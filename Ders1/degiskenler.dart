import 'dart:io';

void main(List<String> args) {

  stdout.write("1.sayıyı giriniz:");

  String text1 = stdin.readLineSync()!;

  double sayi1 = double.parse(text1);

  stdout.write("2.sayıyı giriniz:");

  String text2 = stdin.readLineSync()!;

  double sayi2 = double.parse(text2);

  print("Girdiginiz ${sayi1.toInt()} ve ${sayi2.toInt()} sayılarının toplamı: ${sayi1 + sayi2}");
  
  
   
 



}
