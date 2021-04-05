function selectAllEmployees(){
	var queryStr = "SELECT \"email\",\"firstname\",\"lastname\",\"role\" , count(*) OVER() AS full_count FROM \"public\".\"Employees\"";
	var queryStrWithLimit = "SELECT \"email\",\"firstname\",\"lastname\",\"role\" , count(*) OVER() AS full_count FROM \"public\".\"Employees\" LIMIT ? OFFSET ?";
	try{
		if($s.getParameter("limit") && $s.getParameter("limit") != "" && $s.getParameter("offset") && $s.getParameter("offset") != ""){
		$s.query("KYCDS", queryStrWithLimit);
		$s.setLong(1, "limit");
		$s.setLong(2, "offset");
		}else{
		$s.query("KYCDS", queryStr);
		}
		results = $s.queryDb();
		$s.sendResponse(200, results);
} catch(e) {
			java.lang.System.out.println(e);
			$s.sendResponse(500, e);
		}
}
selectAllEmployees();
