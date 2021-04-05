function updateEmployees(){
	var queryStr = "UPDATE \"public\".\"Employees\" SET \"email\"=?,\"firstname\"=?,\"lastname\"=?,\"role\"=? WHERE \"email\"= ?";
	try{
		$s.query("KYCDS", queryStr);
	$s.setString(1, "email");
	$s.setString(2, "firstname");
	$s.setString(3, "lastname");
	$s.setString(4, "role");
	$s.setString(5, "email");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
updateEmployees();
