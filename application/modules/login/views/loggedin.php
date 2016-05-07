<!DOCTYPE html>
<html>
<head>
	<title>Selamat Datang</title>
</head>
<body>
<?php
echo heading('Anda berhasil login' , 2);
echo anchor('', 'Home');
echo br();
echo "Saya adalah:";
echo br();
echo "Nama : {$nama}";
echo br();
echo "Username : {$username}";
echo br();
echo "IP : {$ip}<br/>";
echo "ID : {$id}<br/>";
echo "Email : {$email}<br/>";
echo anchor('login/logout', 'Logout');
?>
</body>
</html>
