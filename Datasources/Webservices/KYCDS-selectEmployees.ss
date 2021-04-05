function selectEmployees(){
	var queryStr = "SELECT \"email\",\"firstname\",\"lastname\",\"role\" , count(*) OVER() AS full_count FROM \"public\".\"Employees\" WHERE \"email\"= ?";
	var queryStrWithLimit = "SELECT \"email\",\"firstname\",\"lastname\",\"role\" , count(*) OVER() AS full_count FROM \"public\".\"Employees\" WHERE \"email\"= ? LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("KYCDS", queryStrWithLimit);
		$s.setLong(2, "limit");
		$s.setLong(3, "offset");
		}else{
		$s.query("KYCDS", queryStr);
		}
	$s.setString(1, "email");
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectEmployees();
