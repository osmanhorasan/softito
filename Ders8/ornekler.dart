import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var hedef = r.nextInt(11);
  var hak = 3;
  
  while (hak > 0) {
    stdout.write("\nKalan hak: $hak\nTahmin (0-10): ");
    var tahmin = int.tryParse(stdin.readLineSync() ?? "");
    
    if (tahmin == null || tahmin < 0 || tahmin > 10) {
      stdout.write("Geçersiz giriş!");
      continue;
    }
    
    hak--;
    
    if (tahmin < hedef) stdout.write("Büyük!");
    else if (tahmin > hedef) stdout.write("Küçük!");
    else {
      stdout.write("\nTebrikler! Doğru: $hedef");
      break;
    }
  }
  
  if (hak == 0) stdout.write("\nHak bitti! Doğru: $hedef");
}