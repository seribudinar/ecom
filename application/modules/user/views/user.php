<!DOCTYPE html>
<html>
<head>
	<title>Profil <?=$nama?></title>
</head>
<body>
<small><?=anchor('', 'Home')?> > <?=anchor('u/'.$username, $nama)?></small>
<h1><?=$nama?></h1>
<p>
	<?php
	echo anchor('products/anyar', 'Jual Barang');
	echo nbs(3);
	echo anchor('products/me', 'Barang Saya');
	?>
</p>
<blockquote>
	<?=heading($title, 3)?>
	Email: <?=$email?>
</blockquote>
</body>
</html>