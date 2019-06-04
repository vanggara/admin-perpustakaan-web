<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Halaman CRUD</title>
	<link rel="stylesheet" href="">
</head>
<body>
	<table border="2">
		<tr>
			<td>ID</td>
			<td>Nama</td>
			<td>Status</td>
			<td>Jurusan</td>
			<td>Action</td>
		</tr>
		<?php foreach ($content->result_array() as $key): ?>
		<tr>
			<td><?php echo $key['id'] ?></td>
			<td><?php echo $key['nama'] ?></td>
			<td><?php echo $key['status'] ?></td>
			<td><?php echo $key['jurusan'] ?></td>
			<td><a href="<?php echo base_url() ?>crud/delete/<?php echo $key['id'] ?>">Delete</a></td>
			<td><a href="<?php echo base_url() ?>crud/read/<?php echo $key['id'] ?>">Read</a></td>
			<td><a href="<?php echo base_url() ?>crud/update/<?php echo $key['id'] ?>">Update</a></td>
		</tr>
		<?php endforeach ?>
	</table>
</body>
</html>