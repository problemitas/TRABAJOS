<?php

function upload_image()
{
	if(isset($_FILES["user_image"]))
	{
		$extension = explode('.', $_FILES['user_image']['name']);
		$new_name = rand() . '.' . $extension[1];
		$destination = '../upload_img_alumno/' . $new_name;
		move_uploaded_file($_FILES['user_image']['tmp_name'], $destination);
		return $new_name;
	}
}

function get_image_name($user_id)
{
	include('../conexion/db.php');
	$statement = $connection->prepare("SELECT Foto FROM alumno WHERE CodigoAlumno = '$user_id'");
	$statement->execute();
	$result = $statement->fetchAll();
	foreach($result as $row)
	{
		return $row["Foto"];
	}
}

function get_total_all_records()
{
	include('../conexion/db.php');
	$statement = $connection->prepare("SELECT * FROM alumno");
	$statement->execute();
	$result = $statement->fetchAll();
	return $statement->rowCount();
}



?>