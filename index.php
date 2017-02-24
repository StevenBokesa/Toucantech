<?php
include_once "database.php"; 
?>
<!DOCTYPE html>
<html>
<head>
<style>
label{display:inline-block;width:100px;margin-bottom:50px;}
.school, .members{margin:10px;}
</style>
 
 
<title>Add Employee</title>
</head>
<body>

 
<form method="post" action="inserted.php">
<label>Name</label>
<input type="text" name="first_name" />
<br />
<label>Email address</label>
<input type="text" name="email" />
<br />

<div class = "school_name">
	<label>School</label>
	<select name= "school_name">
		<option value="">1</option>
		<option value="">1</option>
		<option value="">1</option>
		<option value="">1</option>
	</select>
</div>

<input type="submit" value="Add Employee">
</form>

<h1>View members for a selected school</h1>

<div class = "school">
	<label>School</label>
	<select name= "school" onchange="getId(this.value);">
		<option value="">Select school</option>
		//populate value using php
		
		<?php
		$query = "SELECT * FROM SCHOOL";
		$results = mysqli_query($mysqli, $query);
		//loop
		foreach ($results as $school){
			?>
			<option value ="<?php echo $school[SCH_ID]; ?>"><?php echo $school[SCH_NAME]; ?></option>
		<?php
		}
	?>
	</select>
</div>

<div class = "members" id="memberlist">
	<label>members</label>
	<select name= "members" id="memberlist">
		<option value=""></option>
	</select>
</div>


<script   src="http://code.jquery.com/jquery-3.1.1.js"   integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA="   crossorigin="anonymous"></script>
<script>
function getId(val){
	//Ajax function
	$.ajax({
		type: "POST",
		url: "getdata.php",
		data: "SCH_ID="+val,
		sucess: function(data){
			$("#memberlist").html(data);
			
		}
	})
}
</script>

 
 
</body>
</html>