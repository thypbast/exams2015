<?php
include_once 'connect.php';

switch ($_GET["table"]) {
	case "personne":
		createPersonne($_GET);
		break;
	case "colis":
		createColis($_GET);
		break;		
	default:
		;
	break;
}

function createColis($data){
	global $conn;
	
	$sql = "INSERT INTO colis (id_perso, id_colis, nom_colis)
	VALUES (".$data["id_perso"].", ".$data["id_colis"].", ".$data["nom_colis"].",NOW())";
	//echo $sql;
	if ($conn->query($sql) === TRUE) {
	    echo "New record created successfully";
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}	
}

function createPersonne($data){
	global $conn;
	$sql = "SELECT * FROM personne where  nom = '". $data["nom"]."' AND prenom = '". $data["prenom"]."' AND adresse = '". $data["adresse"]."'";
	$result = $conn->query($sql);
	if ($result->num_rows == 0) {
		
		$sql = "INSERT INTO personne (nom, prenom, adresse)
		VALUES (".$data["nom"].", ".$data["prenom"].", ".$data["adresse"].")";
		echo "New record has id: " . mysqli_insert_id($conn);
	//echo $sql;
		if ($conn->query($sql) === TRUE) {
	    //echo "New record created successfully";
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}	
		
	}
}
$conn->close();
