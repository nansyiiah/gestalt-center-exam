<?php
$date1 = strtotime("2008-03-24"); // di parsing dari yyyy-mm-dd menjadi format timestamp unix
$date2 = strtotime("2010-06-26"); // di parsing dari yyyy-mm-dd menjadi format timestamp unix

$pembagi = $date2 - $date1; // setelah mendapat value dari timestamp mencari selisih antara tanggal tersebut
$format_tahun = 365*60*60*24; // format timestamp ke tahun
$format_bulan =30*60*60*24; // format timestamp ke bulan
$format_hari = 60*60*24; // format timestamp ke hari

$tahun = floor($pembagi / ($format_tahun)); //floor untuk pembulatan kebawah
$bulan = floor(($pembagi - $tahun * $format_tahun) / ($format_bulan)); //floor untuk pembulatan kebawah
$hari = ceil(($pembagi - $tahun * $format_tahun - $bulan * $format_bulan) / ($format_hari)); //ceil untuk pembulatan keatas
echo "$tahun tahun, $bulan bulan, $hari hari";

//waktu pengerjaan kurang lebih 40 menit 
?>

