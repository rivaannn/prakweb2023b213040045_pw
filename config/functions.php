<?php
// function koneksi untuk koneksi ke database
function koneksi()
{
    $conn = mysqli_connect("localhost", "root", "", "prakweb2023b_213040045") or die('KONEKSI GAGAL');

    return $conn;
}

function query($query)
{
    $conn = koneksi();

    $result = mysqli_query($conn, $query);
    $rows = [];
    // mysqli_fecth_assoc adalah fungsi yang menghasilkan array assosiative yang mana indexnya sesuai dengan nama kolom yang di seleksi
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    // return mengembalikkan, menghentikan,, dan mengembalikkan nilai yang telah di hasilkan fungsi
    return $rows;
}
