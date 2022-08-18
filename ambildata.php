 <?php
//Import File Koneksi Database
require_once('koneksi.php');
//Membuat SQL Query
$sql = "SELECT * FROM `tb_penyakit`";
//Mendapatkan Hasil
$r = mysqli_query($con,$sql);
//Membuat Array Kosong
$result = array();
while($row = mysqli_fetch_array($r)){
//Memasukkan Nama dan ID kedalam Array Kosong yang telah dibuat
array_push($result,array(
"Id"=>$row['Id'],
"kode_penyakit"=>$row['kode_penyakit'],
"nama_gejala"=>$row['nama_gejala'],
"nama_penyakit"=>$row['nama_penyakit'],
"MB"=>$row['MB'],
"MD"=>$row['MD'],
"CF"=>$row['CF']
));
}
//Menampilkan Array dalam Format JSON
echo json_encode(array('datapakar'=>$result));
mysqli_close($con);
?>


