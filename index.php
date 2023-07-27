<!DOCTYPE html>
<html>
<head>
    <title>Form Input Pengguna</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="container">
        <h1 class="mt-4">Form Input Pengguna</h1>
        <form method="post" action="">
            <div class="form-group">
                <label for="data">Masukkan data pengguna (NAMA USIA KOTA):</label>
                <input type="text" class="form-control" name="data" id="data" required>
            </div>
            <button type="submit" class="btn btn-primary" name="submit">Submit</button>
            <br>
            <br>
        </form>

        <?php
            if (isset($_POST['submit'])) {
                $inputData = trim($_POST['data']);

                if (!empty($inputData)) {
                    $dataArr = explode(' ', $inputData);

                    $nama = '';
                    $nextIndex = 0;
                    while ($nextIndex < count($dataArr) && !is_numeric($dataArr[$nextIndex])) {
                        $nama .= $dataArr[$nextIndex] . ' ';
                        $nextIndex++;
                    }
                    $nama = trim($nama);
                    $nama = strtoupper($nama);

                    $usia = (int)$dataArr[$nextIndex];
                    $nextIndex++;

                    $kota = '';
                    while ($nextIndex < count($dataArr)) {
                        $kota .= $dataArr[$nextIndex] . ' ';
                        $nextIndex++;
                    }
                    $kota = trim($kota);
                    $kota = strtoupper($kota);

                    
                    include 'koneksi.php';

                    $created_at = date('Y-m-d H:i:s');
                    $sql = "INSERT INTO user (NAME, AGE, CITY, CREATED_AT) VALUES ('$nama', $usia, '$kota', '$created_at')";

                    if ($conn->query($sql) === TRUE) {
                        echo '<div id="successMessage" class="alert alert-success" role="alert">Informasi Pengguna telah disimpan di database.</div>';
                    } else {
                        echo "Error: " . $sql . "<br>" . $conn->error;
                    }

                    $conn->close();
                } else {
                    echo "<p>Anda harus memasukkan data.</p>";
                }
            }
        ?>

    </div>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!-- JavaScript code -->
        <script>
        $(document).ready(function() {
            // Hide the success message after 5 seconds
            setTimeout(function() {
                $("#successMessage").fadeOut();
            }, 5000);
        });
    </script>
</body>
</html>
