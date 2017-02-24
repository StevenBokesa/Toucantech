<?php
include_once "database.php";

if(!empty($_POST["SCH_ID"])){
	$SCH_ID =$_POST["SCH_ID"];
	$query = "SELECT * FROM MEMBERS WHERE SCH_ID = " .$_POST["SCH_ID"] . "";
	$results = mysqli_query($mysqli, $query);
	
	foreach ($results as $members){
		?>
		<option value="<?php echo $members["MEM_ID"];?>"><?php echo $members["MEM_NAME"];?></option>
	<?php
	}
	
}
?>

 