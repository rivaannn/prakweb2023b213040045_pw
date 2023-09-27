<?php
require 'config/functions.php';
?>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>VANTECH - BOOK</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
  <nav class="navbar bg-body-tertiary">
    <div class="container">
      <a class="navbar-brand">VANTECH - BUKU</a>
    </div>
  </nav>

  <section class="main">
    <div class="container">
      <div class="row">
        <?php $buku = query("SELECT * FROM buku"); ?>

        <table class="table">
          <thead>
            <tr>
              <th scope="col">Kode Buku</th>
              <th scope="col">Gambar</th>
              <th scope="col">Judul Buku</th>
              <th scope="col">Penerbit</th>
              <th scope="col">Pengarang</th>
              <th scope="col">Kategori</th>
              <th scope="col">Tahun Terbit</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($buku as $bk) : ?>
              <tr>
                <th scope="row"><?= $bk['id_buku']; ?></th>
                <td><img src="https://picsum.photos/200/200"></td>
                <td><?= $bk['judul_buku']; ?></td>
                <td><?= $bk['penerbit']; ?></td>
                <td><?= $bk['pengarang']; ?></td>
                <td><?= $bk['kategori']; ?></td>
                <td><?= $bk['tahun_terbit']; ?></td>
              </tr>
            <?php endforeach; ?>
          </tbody>
        </table>
      </div>
    </div>
  </section>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>