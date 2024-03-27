import 'dart:io';

void main() {
  stdout.write("Masukkan Skor 1 Tim Lumba-lumba: ");
  num lumba1 = num.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Skor 2 Tim Lumba-lumba: ");
  num lumba2 = num.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Skor 3 Tim Lumba-lumba: ");
  num lumba3 = num.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Skor 1 Tim Koala: ");
  num koala1 = num.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Skor 2 Tim Koala: ");
  num koala2 = num.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Skor 3 Tim Koala: ");
  num koala3 = num.parse(stdin.readLineSync()!);

  var avgLumba = (lumba1 + lumba2 + lumba3) / 3;
  var avgKoala = (koala1 + koala2 + koala3) / 3;
  num minScore = 100;

  if (avgLumba > avgKoala && avgLumba >= minScore) {
    print('Pemenang kompetisi adalah Tim Lumba-lumba dengan skor rata-rata $avgLumba');
  } else if (avgKoala > avgLumba && avgKoala >= minScore) {
    print('Pemenang kompetisi adalah Tim Koala dengan skor rata-rata ${avgKoala.toStringAsFixed(2)}');
  } else if (avgLumba == avgKoala && avgLumba >= minScore && avgKoala >= minScore) {
    print('Kompetisi seri antara Tim Lumba-lumba dan Tim Koala dengan skor rata-rata ${avgLumba.toStringAsFixed(2)}');
  } else {
    print('Tidak ada pemenang dalam kompetisi karena tidak ada tim yang memenuhi syarat skor minimum.');
  }
}
