<?php
$jumlahUang = 1586*1000;

$pecahan = [100*1000, 50*1000, 20*1000, 5*1000, 1*1000]; //deklarasi array pecahan uang 
$jumlahPecahan = array_fill(0, count($pecahan), 0); // array kosong dengan panjang array 5 isinya 0 semua (int)
for ($i = 0; $i < count($pecahan); $i++) { // loop sesuai pecahan yang ada yaitu 5 pecahan
    $jumlahPecahan[$i] = floor($jumlahUang / $pecahan[$i]); // loop sesuai dengan index diganti menjadi total uang dibagi pecahan sesuai indexnya untuk menampung lembaran nya
    $jumlahUang %= $pecahan[$i];  // total saldo di modulus kan dengan saldo sesuai index (modulus adalah sisa hasil bagi)
}
for ($i = 0; $i < count($pecahan); $i++) { // loop dengan panjang pecahan yaitu 5
    echo "{ jumlah pecahan Rp ".$pecahan[$i]." : ".$jumlahPecahan[$i]." lembar }"; //$pecahan[$i] adalah sesuai index contohnya index 0 adalah 100.000 dst $jumlahPecahan[$i] adalah jumlah pecahannya sesuai index
}
//total waktu mengerjakan kurang lebih 35 menit
?>
