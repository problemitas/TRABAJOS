<?php

function get_total_all_records()
{
	include('../conexion/db.php');
	$statement = $connection->prepare("SELECT * FROM ControlNotas");
	$statement->execute();
	$result = $statement->fetchAll();
	return $statement->rowCount();
}



?>