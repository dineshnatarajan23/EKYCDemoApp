function deleteEmployees(){
	var queryStr = "DELETE FROM \"public\".\"Employees\" WHERE \"email\"= ?";
	try{
		$s.query("KYCDS", queryStr);
		$s.setString(1, "email");
		results = $s.execute();
		$s.sendResponse(200, results);
	} catch(e) {
		$s.sendResponse(500, e);
	}
}
deleteEmployees();
