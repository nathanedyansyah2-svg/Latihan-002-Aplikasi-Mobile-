void main() {
  // Skenario 1
  int total1 = 80000;
  bool member1 = false;

  print(" Skenario 1");
  print("Belanja : Rp$total1");
  print("Member  : ${member1 ? 'Ya' : 'Tidak'}");

  int diskon1 = hitungPersenDiskon(total1, member1);
  int potongan1 = hitungPotongan(total1, diskon1);
  int bayar1 = hitungTotalBayar(total1, potongan1);

  print("Potongan: Rp$potongan1");
  print("Total Bayar: Rp$bayar1");
  print("");

  // Skenario 2
  int total2 = 150000;
  bool member2 = false;

  print(" Skenario 2 ");
  print("Belanja : Rp$total2");
  print("Member  : ${member2 ? 'Ya' : 'Tidak'}");

  int diskon2 = hitungPersenDiskon(total2, member2);
  int potongan2 = hitungPotongan(total2, diskon2);
  int bayar2 = hitungTotalBayar(total2, potongan2);

  print("Potongan: Rp$potongan2");
  print("Total Bayar: Rp$bayar2");
  print("");

  // Skenario 3
  int total3 = 150000;
  bool member3 = true;

  print(" Skenario 3 ");
  print("Belanja : Rp$total3");
  print("Member  : ${member3 ? 'Ya' : 'Tidak'}");

  int diskon3 = hitungPersenDiskon(total3, member3);
  int potongan3 = hitungPotongan(total3, diskon3);
  int bayar3 = hitungTotalBayar(total3, potongan3);

  print("Potongan: Rp$potongan3");
  print("Total Bayar: Rp$bayar3");
  print("");

  // Skenario 4
  int total4 = 300000;
  bool member4 = true;

  print(" Skenario 4 ");
  print("Belanja : Rp$total4");
  print("Member  : ${member4 ? 'Ya' : 'Tidak'}");

  int diskon4 = hitungPersenDiskon(total4, member4);
  int potongan4 = hitungPotongan(total4, diskon4);
  int bayar4 = hitungTotalBayar(total4, potongan4);

  print("Potongan: Rp$potongan4");
  print("Total Bayar: Rp$bayar4");
}


// Menentukan persentase diskon
int hitungPersenDiskon(int belanja, bool member) {
  int persen = 0;

  // br 1
  if (belanja >= 100000) {
    persen = 10;

    // br 2
    if (member) {
      persen += 5;
    }
  }

  return persen;
}


// ngitung nominal potongannya
int hitungPotongan(int belanja, int persen) {
  int hasilPotongan = (belanja * persen) ~/ 100;

  // br 3
  if (hasilPotongan > 25000) {
    hasilPotongan = 25000;
  }

  return hasilPotongan;
}


// ngiutung jumlah harus dibayarnya
int hitungTotalBayar(int belanja, int potongan) {
  return belanja - potongan;
}
