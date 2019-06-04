<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Update Data</title>
	<link rel="stylesheet" href="">
</head>
<h2>Update Data</h2>
<body>
	<?php foreach ($content->result() as $key): ?>
		<form action="<?php echo base_url(); ?>crud/action_update/<?php echo $key->id ?>" method="post">
		<input type="text" name="nama" placeholder="Masukkan Nama" value="<?php echo $key->nama?>"><br>
		<input type="text" name="status" placeholder="Masukkan Status" value="<?php echo $key->status?>"><br>
		<input type="text" name="jurusan" placeholder="Masukkan Jurusan" value="<?php echo $key->jurusan?>"><br><br>
		<input type="submit" value="Save">
	</form>
	<?php endforeach ?>
</body>
</html>