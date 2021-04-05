function insertEmployees(){
	var queryStr = "INSERT INTO \"public\".\"Employees\" (\"email\",\"firstname\",\"lastname\",\"role\") VALUES(?,?,?,?)";
	try{
		$s.query("KYCDS", queryStr);
		$s.setString(1, "email");
		$s.setString(2, "firstname");
		$s.setString(3, "lastname");
		$s.setString(4, "role");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
insertEmployees();
