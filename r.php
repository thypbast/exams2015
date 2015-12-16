<?php
include_once 'connect.php';

switch ($_GET["table"]) {
	case "personne":
		selectPersonnes($_GET);
		break;
	case "colis":
		selectColis($_GET);
		break;	
	default:
		;
	break;
}

function selectColis($data){
	global $conn;
	$list= array();
	$sql = "SELECT * FROM colis where id_perso=".$data["id_perso"];
	//echo $sql."<br>".$result->num_rows."<br>";
	$result = $conn->query($sql);
	if ($result && $result->num_rows) {
		while($row = $result->fetch_assoc()) {
			$list[] = $row;
		}
		echo json_encode($list);
	} else {
	    echo "";
	}	
	
}

function selectPersonnes(){
	global $conn;
	$list= array();
	$sql = "SELECT * FROM personne";
	$result = $conn->query($sql);
	
	//echo $sql."<br>".$result->num_rows."<br>";
	if ($result && $result->num_rows) {
		while($row = $result->fetch_assoc()) {
			$list[] = $row;
		}
		echo json_encode($list);
	}
}

$conn->close();
?>
